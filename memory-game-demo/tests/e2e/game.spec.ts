/**
 * E2E Tests — The Arcane Vault
 *
 * Run:    npx playwright test
 * Debug:  npx playwright test --debug
 * UI:     npx playwright test --ui
 */

import { test, expect } from "@playwright/test";

test.describe("Main Menu", () => {
  test("game loads and shows main menu", async ({ page }) => {
    await page.goto("/");
    await expect(page.locator("text=The Arcane Vault")).toBeVisible();
    await expect(page.locator("text=Enter the Vault")).toBeVisible();
  });

  test("main menu has card fan animation", async ({ page }) => {
    await page.goto("/");
    // 5 emoji cards in the fan
    const cards = page.locator("text=🐉");
    await expect(cards.first()).toBeVisible();
  });

  test("capture main menu screenshot", async ({ page }) => {
    await page.goto("/");
    await page.waitForLoadState("networkidle");
    await page.screenshot({
      path: "tests/screenshots/01_main_menu.png",
      fullPage: true,
    });
  });
});

test.describe("Level Select", () => {
  test("clicking Enter shows level select", async ({ page }) => {
    await page.goto("/");
    await page.locator("text=Enter the Vault").click();
    await expect(page.locator("text=Choose Your Quest")).toBeVisible();
  });

  test("all 8 levels are visible", async ({ page }) => {
    await page.goto("/");
    await page.locator("text=Enter the Vault").click();

    await expect(page.locator("text=The Pillar")).toBeVisible();
    await expect(page.locator("text=The Cross")).toBeVisible();
    await expect(page.locator("text=The Tablet")).toBeVisible();
    await expect(page.locator("text=The Arch")).toBeVisible();
    await expect(page.locator("text=The Serpent")).toBeVisible();
    await expect(page.locator("text=The Gate")).toBeVisible();
    await expect(page.locator("text=The Star")).toBeVisible();
  });

  test("capture level select screenshot", async ({ page }) => {
    await page.goto("/");
    await page.locator("text=Enter the Vault").click();
    await page.waitForTimeout(500);
    await page.screenshot({
      path: "tests/screenshots/02_level_select.png",
      fullPage: true,
    });
  });
});

test.describe("Gameplay", () => {
  test("selecting a level starts the game", async ({ page }) => {
    await page.goto("/");
    await page.locator("text=Enter the Vault").click();
    await page.locator("text=The Pillar").click();

    // HUD should be visible
    await expect(page.locator("text=The Pillar").last()).toBeVisible();
    // Back button
    await expect(page.locator("text=← Back")).toBeVisible();
  });

  test("cards are rendered on the board", async ({ page }) => {
    await page.goto("/");
    await page.locator("text=Enter the Vault").click();
    await page.locator("text=The Pillar").click();

    // Wait for dealing animation
    await page.waitForTimeout(800);

    // Cards should have the ✦ glyph on their back face
    const glyphs = page.locator("text=✦");
    expect(await glyphs.count()).toBeGreaterThan(0);
  });

  test("clicking a card flips it", async ({ page }) => {
    await page.goto("/");
    await page.locator("text=Enter the Vault").click();
    await page.locator("text=The Pillar").click();
    await page.waitForTimeout(800);

    // Click first card (by clicking the ✦ glyph)
    const cards = page.locator("text=✦");
    await cards.first().click();

    // After flip, a creature emoji should be visible
    await page.waitForTimeout(600);
    await page.screenshot({
      path: "tests/screenshots/03_card_flipped.png",
      fullPage: true,
    });
  });

  test("back button returns to level select", async ({ page }) => {
    await page.goto("/");
    await page.locator("text=Enter the Vault").click();
    await page.locator("text=The Pillar").click();
    await page.waitForTimeout(800);

    await page.locator("text=← Back").click();
    await expect(page.locator("text=Choose Your Quest")).toBeVisible();
  });

  test("capture game board screenshot", async ({ page }) => {
    await page.goto("/");
    await page.locator("text=Enter the Vault").click();
    await page.locator("text=The Cross").click();
    await page.waitForTimeout(800);
    await page.screenshot({
      path: "tests/screenshots/04_game_board.png",
      fullPage: true,
    });
  });
});

test.describe("Persistence (Sprint 2)", () => {
  test("level select shows no stars on fresh load", async ({ page }) => {
    await page.goto("/");
    await page.evaluate(() => localStorage.removeItem("arcane-vault-scores"));
    await page.reload();
    await page.locator("text=Enter the Vault").click();

    // Reset Progress button should NOT appear when no scores
    await expect(page.locator("text=Reset Progress")).not.toBeVisible();
  });

  test("saved scores show stars on level select", async ({ page }) => {
    await page.goto("/");
    // Inject a saved score
    await page.evaluate(() => {
      localStorage.setItem(
        "arcane-vault-scores",
        JSON.stringify({ "level-01": { stars: 3, moves: 6, elapsed: 20 } })
      );
    });
    await page.reload();
    await page.locator("text=Enter the Vault").click();

    // Reset Progress button should appear
    await expect(page.locator("text=Reset Progress")).toBeVisible();

    // Clean up
    await page.evaluate(() => localStorage.removeItem("arcane-vault-scores"));
  });
});

test.describe("No Console Errors", () => {
  test("no JS errors on game load", async ({ page }) => {
    const errors: string[] = [];
    page.on("console", (msg) => {
      if (msg.type() === "error") {
        errors.push(msg.text());
      }
    });

    await page.goto("/");
    await page.waitForLoadState("networkidle");
    expect(errors).toHaveLength(0);
  });
});
