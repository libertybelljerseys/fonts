# Hockey Font Database

A collection of hand-drawn SVG fonts replicating jersey number and lettering styles from NHL, AHL, CHL, WHL, QMJHL, and other hockey leagues.

---

## Structure

```
/<LEAGUE>
  /<Team_Name>
    /finalized/          # Complete, ready-to-use fonts
      /glyphs/           # Individual character files (where applicable)
    /wip/                # Work in progress — may be incomplete or inaccurate
```

Leagues: `NHL`, `AHL`, `CHL`, `WHL`, `QMJHL`, `Other`

---

## Naming Schema

All files follow this convention:

```
TEAM_ERA_STYLE_vN.svg
```

| Segment | Description | Examples |
|---|---|---|
| `TEAM` | 2–5 letter team abbreviation (uppercase) | `TOR`, `BOS`, `CHIW` |
| `ERA` | Years the jersey was in use | `2020-present`, `1997-2000`, `current`, `retro` |
| `STYLE` | What the file contains (lowercase) | `jersey-numbers`, `wordmark`, `nameplate`, `alternate` |
| `vN` | Version number | `v1`, `v2` |

**Special event style tokens:** `winterclassic`, `stadiumseries`, `reverseretro1`, `reverseretro2`, `25thanniversary`

**Glyph files** (individual characters, stored in a `glyphs/` subfolder) omit the version suffix and end with the character instead:
```
TEAM_ERA_STYLE_GLYPH.svg
BOS_current_jersey-letters_A.svg
BOS_current_jersey-numbers-back_7.svg
```

**Full examples:**
```
NHL/Toronto_Maple_Leafs/finalized/TOR_2020-present_jersey-numbers_v1.svg
NHL/Carolina_Hurricanes/finalized/CAR_2022_stadiumseries_jersey-numbers_v1.svg
NHL/Boston_Bruins/finalized/glyphs/BOS_current_jersey-letters_A.svg
AHL/Chicago_Wolves/finalized/CHIW_current_jersey-numbers_v1.svg
```

---

## Contributing

Pull requests are welcome. A few ground rules:

- **Follow the naming schema above.** A GitHub Actions workflow will automatically lint filenames on any PR and flag violations with instructions on how to fix them.
- **Place files in the correct status directory.** Use `finalized/` only for complete, accurate fonts. Use `wip/` for anything in progress.
- **SVG only.** All files should be `.svg`.
- **One font per file** (except glyph sets, which get their own `glyphs/` subfolder with one file per character).

If you're adding a new team, create the team folder following the existing `League/Team_Name/` pattern before adding files.

---

## License

This project is licensed under the **Creative Commons Attribution 4.0 International (CC BY 4.0)** license.

You are free to use, share, and adapt these fonts for any purpose — including commercially — as long as you give appropriate credit.

**Required attribution format:**  
> Fonts from the [Hockey Font Database](https://github.com/libertybelljerseys/fonts) by libertybelljerseys, licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).

See the [LICENSE](./LICENSE) file for full legal text.
