# Shaped Grid System Design

> The shape IS the level. Cards are arranged in recognizable shapes on a CSS Grid.

## Card Sizes

| Size | Grid Span | Frequency | Use |
|------|-----------|-----------|-----|
| 1x1 | 1 col x 1 row | ~70% | Standard fill |
| 2x1 | 2 cols x 1 row | ~15% | Crossbars, horizontal strokes |
| 1x2 | 1 col x 2 rows | ~10% | Vertical strokes, pillars |
| 2x2 | 2 cols x 2 rows | ~5% | Boss pairs, center anchors |

## Template Validation

A template is valid if:
1. Total slot count is even
2. Count of each size variant is even
3. No two slots overlap
4. All cells within grid bounds
5. 3-24 pairs

## Level Library

| # | Name | Shape | Grid | Pairs | Difficulty | Time |
|---|------|-------|------|-------|------------|------|
| 1 | The Pillar | 1 | 3x7 | 5 | Easy | 60s |
| 2 | The Cross | + | 5x5 | 6 | Easy | 90s |
| 3 | The Tablet | T | 7x6 | 8 | Easy | 80s |
| 4 | The Arch | A | 7x8 | 10 | Medium | 120s |
| 5 | The Serpent | S | 6x8 | 12 | Medium | 100s |
| 6 | The Diamond | diamond | 7x7 | 10 | Medium | 100s |
| 7 | The Gate | H | 7x8 | 10 | Hard | 110s |
| 8 | The Star | star | 9x9 | 16 | Legendary | 90s |

## Pattern Encoding

`#` = card slot, `.` = empty, `/` = row separator

Example (The Cross):
```
.##.
.##.
####
####
.##.
.##.
```
