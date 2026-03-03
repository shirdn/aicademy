import { defineConfig, devices } from "@playwright/test";

export default defineConfig({
  testDir: "./tests/e2e",
  timeout: 30_000,
  forbidOnly: !!process.env.CI,
  retries: process.env.CI ? 2 : 0,
  reporter: process.env.CI ? "github" : "html",

  use: {
    baseURL: "http://localhost:8766",
    trace: "on-first-retry",
    screenshot: "only-on-failure",
  },

  projects: [
    {
      name: "chromium",
      use: { ...devices["Desktop Chrome"] },
    },
  ],

  webServer: {
    command: "python -m http.server 8766 --directory frontend/modules/game/src",
    port: 8766,
    reuseExistingServer: !process.env.CI,
    timeout: 10_000,
  },
});
