#!/usr/bin/env bash
# reorganize.sh
# Renames and restructures the libertybelljerseys/fonts repo.
# Run from the ROOT of the cloned repo.
# Safe to re-run: uses -v on moves and won't overwrite existing files.

set -euo pipefail

move() {
  local src="$1"
  local dst="$2"
  if [[ ! -f "$src" ]]; then
    echo "SKIP (not found): $src"
    return
  fi
  mkdir -p "$(dirname "$dst")"
  mv -nv "$src" "$dst"
}

echo "=== Reorganizing fonts repo ==="

# ─────────────────────────────────────────────
# AHL
# ─────────────────────────────────────────────
move "AHL/wolves.svg" \
     "AHL/Chicago_Wolves/finalized/CHIW_current_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Anaheim Ducks
# ─────────────────────────────────────────────
move "NHL/Anaheim_Ducks/Ducks 2007-14.svg" \
     "NHL/Anaheim_Ducks/finalized/ANA_2007-2014_jersey-numbers_v1.svg"
move "NHL/Anaheim_Ducks/Ducks 2015-24.svg" \
     "NHL/Anaheim_Ducks/finalized/ANA_2015-2024_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Boston Bruins
# ─────────────────────────────────────────────
move "NHL/Boston_Bruins/adidas_h_a_3.svg" \
     "NHL/Boston_Bruins/finalized/BOS_2017-present_jersey-numbers_v1.svg"
move "NHL/Boston_Bruins/marchand_nameplate.svg" \
     "NHL/Boston_Bruins/wip/BOS_current_nameplate_v1.svg"
move "NHL/Boston_Bruins/marchand_stags.svg" \
     "NHL/Boston_Bruins/wip/BOS_2023_stadiumseries_nameplate_v1.svg"
move "NHL/Boston_Bruins/marchand_wc_stags.svg" \
     "NHL/Boston_Bruins/wip/BOS_winterclassic_nameplate_v1.svg"

# Bruins glyphs — letters
for char in A B C D E F G H I J K L M N O P R S T U V W X Y Z; do
  move "NHL/Boston_Bruins/Bruins/${char}.svg" \
       "NHL/Boston_Bruins/finalized/glyphs/BOS_current_jersey-letters_${char}.svg"
done
move "NHL/Boston_Bruins/Bruins/SMALL C.svg" \
     "NHL/Boston_Bruins/finalized/glyphs/BOS_current_captain_C.svg"
move "NHL/Boston_Bruins/Bruins/SMALL E.svg" \
     "NHL/Boston_Bruins/finalized/glyphs/BOS_current_jersey-letters_smallE.svg"
move "NHL/Boston_Bruins/Bruins/ALT CAPTAIN.svg" \
     "NHL/Boston_Bruins/finalized/glyphs/BOS_current_altcaptain_A.svg"

# Bruins glyphs — numbers (back and sleeve)
for n in 0 1 2 3 4 5 6 7 8 9; do
  move "NHL/Boston_Bruins/Bruins/BACK ${n}.svg" \
       "NHL/Boston_Bruins/finalized/glyphs/BOS_current_jersey-numbers-back_${n}.svg"
  move "NHL/Boston_Bruins/Bruins/SLEEVE ${n}.svg" \
       "NHL/Boston_Bruins/finalized/glyphs/BOS_current_jersey-numbers-sleeve_${n}.svg"
done

# ─────────────────────────────────────────────
# NHL / Buffalo Sabres
# ─────────────────────────────────────────────
move "NHL/Buffalo_Sabres/1996-2007.svg" \
     "NHL/Buffalo_Sabres/finalized/BUF_1996-2007_jersey-numbers_v1.svg"
move "NHL/Buffalo_Sabres/NEW YORK.svg" \
     "NHL/Buffalo_Sabres/finalized/BUF_2001_911memorial_wordmark_v1.svg"

# ─────────────────────────────────────────────
# NHL / Calgary Flames
# ─────────────────────────────────────────────
move "NHL/Calgary_Flames/retro_font.svg" \
     "NHL/Calgary_Flames/finalized/CGY_retro_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Carolina Hurricanes
# ─────────────────────────────────────────────
move "NHL/Carolina_Hurricanes/97-00.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_1997-2000_jersey-numbers_v1.svg"
move "NHL/Carolina_Hurricanes/97-00_cricut.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_1997-2000_jersey-numbers-cricut_v1.svg"
move "NHL/Carolina_Hurricanes/00-07.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_2000-2007_jersey-numbers_v1.svg"
move "NHL/Carolina_Hurricanes/00-07_cricut.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_2000-2007_jersey-numbers-cricut_v1.svg"
move "NHL/Carolina_Hurricanes/25th.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_2022_25thanniversary_jersey-numbers_v1.svg"
move "NHL/Carolina_Hurricanes/canes_22ss.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_2022_stadiumseries_jersey-numbers_v1.svg"
move "NHL/Carolina_Hurricanes/canes_23ss.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_2023_stadiumseries_jersey-numbers_v1.svg"
move "NHL/Carolina_Hurricanes/Edge1.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_2007-2017_jersey-numbers_v1.svg"
move "NHL/Carolina_Hurricanes/hurriwhalers.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_hurriwhalers_jersey-numbers_v1.svg"
move "NHL/Carolina_Hurricanes/hurriwhalers_cricut.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_hurriwhalers_jersey-numbers-cricut_v1.svg"
move "NHL/Carolina_Hurricanes/hurriwhalers_noguides.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_hurriwhalers_jersey-numbers-noguides_v1.svg"
move "NHL/Carolina_Hurricanes/new_away.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_current_jersey-numbers-away_v1.svg"
move "NHL/Carolina_Hurricanes/ss_away.svg" \
     "NHL/Carolina_Hurricanes/wip/CAR_stadiumseries_jersey-numbers-away_v1.svg"
move "NHL/Carolina_Hurricanes/Univers_Font.svg" \
     "NHL/Carolina_Hurricanes/finalized/CAR_current_wordmark_v1.svg"

# ─────────────────────────────────────────────
# NHL / Chicago Blackhawks
# ─────────────────────────────────────────────
move "NHL/Chicago_Blackhawks/adidas_ha.svg" \
     "NHL/Chicago_Blackhawks/finalized/CHI_2017-present_jersey-numbers_v1.svg"
move "NHL/Chicago_Blackhawks/griswold_name.svg" \
     "NHL/Chicago_Blackhawks/wip/CHI_current_nameplate_v1.svg"

# ─────────────────────────────────────────────
# NHL / Columbus Blue Jackets
# ─────────────────────────────────────────────
move "NHL/Columbus_Blue_Jackets/cbj_adidas.svg" \
     "NHL/Columbus_Blue_Jackets/finalized/CBJ_2017-present_jersey-numbers_v1.svg"
move "NHL/Columbus_Blue_Jackets/cbj_25SS.svg" \
     "NHL/Columbus_Blue_Jackets/finalized/CBJ_2025_stadiumseries_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Dallas Stars
# ─────────────────────────────────────────────
move "NHL/Dallas_Stars/Stars Current Numbers.svg" \
     "NHL/Dallas_Stars/finalized/DAL_current_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Edmonton Oilers
# ─────────────────────────────────────────────
move "NHL/Edmonton_Oilers/Edmonton Oilers Navy Alt - McDavid.svg" \
     "NHL/Edmonton_Oilers/wip/EDM_current_alternate_nameplate_v1.svg"
move "NHL/Edmonton_Oilers/rr2.svg" \
     "NHL/Edmonton_Oilers/finalized/EDM_2022_reverseretro2_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Florida Panthers
# ─────────────────────────────────────────────
move "NHL/Florida_Panthers/2016-Present.svg" \
     "NHL/Florida_Panthers/finalized/FLA_2016-present_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Minnesota Wild
# ─────────────────────────────────────────────
move "NHL/Minnesota_Wild/adidas_ha.svg" \
     "NHL/Minnesota_Wild/finalized/MIN_2017-present_jersey-numbers_v1.svg"
move "NHL/Minnesota_Wild/Wild 2017-Present Home.svg" \
     "NHL/Minnesota_Wild/finalized/MIN_2017-present_jersey-numbers-home_v1.svg"
move "NHL/Minnesota_Wild/Wild 2017-Present Away.svg" \
     "NHL/Minnesota_Wild/finalized/MIN_2017-present_jersey-numbers-away_v1.svg"
move "NHL/Minnesota_Wild/25th-2.svg" \
     "NHL/Minnesota_Wild/wip/MIN_2025_25thanniversary_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Montreal Canadiens
# ─────────────────────────────────────────────
move "NHL/Montreal_Canadiens/Barberpole Price.svg" \
     "NHL/Montreal_Canadiens/wip/MTL_barberpole_nameplate_v1.svg"
move "NHL/Montreal_Canadiens/Edge Away.svg" \
     "NHL/Montreal_Canadiens/finalized/MTL_2007-2017_jersey-numbers-away_v1.svg"

# ─────────────────────────────────────────────
# NHL / New Jersey Devils
# ─────────────────────────────────────────────
move "NHL/New_Jersey_Devils/Pre-Edge.svg" \
     "NHL/New_Jersey_Devils/finalized/NJD_pre2007_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / New York Islanders
# ─────────────────────────────────────────────
move "NHL/New_York_Islanders/Islanders 2009-Present NEW.svg" \
     "NHL/New_York_Islanders/finalized/NYI_2009-present_jersey-numbers_v1.svg"
move "NHL/New_York_Islanders/Islanders 2018-24 Alternate.svg" \
     "NHL/New_York_Islanders/finalized/NYI_2018-2024_alternate_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / New York Rangers
# ─────────────────────────────────────────────
move "NHL/New_York_Rangers/Rangers Current Home, Road.svg" \
     "NHL/New_York_Rangers/finalized/NYR_current_jersey-numbers_v1.svg"
move "NHL/New_York_Rangers/Rangers 2012 Winter Classic.svg" \
     "NHL/New_York_Rangers/finalized/NYR_2012_winterclassic_jersey-numbers_v1.svg"
move "NHL/New_York_Rangers/Rangers 2023-Pres Alt.svg" \
     "NHL/New_York_Rangers/finalized/NYR_2023-present_alternate_jersey-numbers_v1.svg"
move "NHL/New_York_Rangers/Rangers Namebar Profile.svg" \
     "NHL/New_York_Rangers/finalized/NYR_current_nameplate_v1.svg"

# ─────────────────────────────────────────────
# NHL / Ottawa Senators
# ─────────────────────────────────────────────
move "NHL/Ottawa_Senators/new_HA.svg" \
     "NHL/Ottawa_Senators/finalized/OTT_current_jersey-numbers_v1.svg"
move "NHL/Ottawa_Senators/debrincat_rr2.svg" \
     "NHL/Ottawa_Senators/wip/OTT_2022_reverseretro2_nameplate_v1.svg"

# ─────────────────────────────────────────────
# NHL / Philadelphia Flyers
# ─────────────────────────────────────────────
move "NHL/Philadelphia_Flyers/flyers_adidas.svg" \
     "NHL/Philadelphia_Flyers/finalized/PHI_2017-present_jersey-numbers_v1.svg"
move "NHL/Philadelphia_Flyers/flyers_adidas_2017-23.svg" \
     "NHL/Philadelphia_Flyers/finalized/PHI_2017-2023_jersey-numbers_v1.svg"
move "NHL/Philadelphia_Flyers/flyers_new_orange.svg" \
     "NHL/Philadelphia_Flyers/finalized/PHI_current_jersey-numbers-orange_v1.svg"
move "NHL/Philadelphia_Flyers/17ss_alt.svg" \
     "NHL/Philadelphia_Flyers/finalized/PHI_2017_stadiumseries_jersey-numbers_v1.svg"
move "NHL/Philadelphia_Flyers/flyers_3d.svg" \
     "NHL/Philadelphia_Flyers/finalized/PHI_current_jersey-numbers-3d_v1.svg"
move "NHL/Philadelphia_Flyers/rr2.svg" \
     "NHL/Philadelphia_Flyers/finalized/PHI_2022_reverseretro2_jersey-numbers_v1.svg"
move "NHL/Philadelphia_Flyers/rr10.svg" \
     "NHL/Philadelphia_Flyers/finalized/PHI_2021_reverseretro1_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Pittsburgh Penguins
# ─────────────────────────────────────────────
move "NHL/Pittsburgh_Penguins/adidas.svg" \
     "NHL/Pittsburgh_Penguins/finalized/PIT_2017-present_jersey-numbers_v1.svg"
move "NHL/Pittsburgh_Penguins/Edge Home.svg" \
     "NHL/Pittsburgh_Penguins/finalized/PIT_2007-2017_jersey-numbers-home_v1.svg"
move "NHL/Pittsburgh_Penguins/Edge Road.svg" \
     "NHL/Pittsburgh_Penguins/finalized/PIT_2007-2017_jersey-numbers-road_v1.svg"
move "NHL/Pittsburgh_Penguins/white_robopen.svg" \
     "NHL/Pittsburgh_Penguins/finalized/PIT_current_jersey-numbers-white_v1.svg"

# ─────────────────────────────────────────────
# NHL / San Jose Sharks
# ─────────────────────────────────────────────
move "NHL/San_Jose_Sharks/Sharks 35th Anniversary.svg" \
     "NHL/San_Jose_Sharks/finalized/SJS_2025_35thanniversary_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Toronto Maple Leafs
# ─────────────────────────────────────────────
move "NHL/Toronto_Maple_Leafs/OG_EDGE.svg" \
     "NHL/Toronto_Maple_Leafs/finalized/TOR_2007-2011_jersey-numbers_v1.svg"
move "NHL/Toronto_Maple_Leafs/2016-2020_bubble.svg" \
     "NHL/Toronto_Maple_Leafs/finalized/TOR_2016-2020_jersey-numbers_v1.svg"
move "NHL/Toronto_Maple_Leafs/regular_2020-present.svg" \
     "NHL/Toronto_Maple_Leafs/finalized/TOR_2020-present_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Utah Mammoth
# ─────────────────────────────────────────────
move "NHL/Utah_Mammoth/Utah_Hockey_Club.svg" \
     "NHL/Utah_Mammoth/finalized/UTA_2024-2025_jersey-numbers_v1.svg"
move "NHL/Utah_Mammoth/Mammoth_Home_Away_2025-Present.svg" \
     "NHL/Utah_Mammoth/finalized/UTA_2025-present_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Vancouver Canucks
# ─────────────────────────────────────────────
move "NHL/Vancouver_Canucks/agency_font.svg" \
     "NHL/Vancouver_Canucks/finalized/VAN_current_wordmark_v1.svg"

# ─────────────────────────────────────────────
# NHL / Washington Capitals
# ─────────────────────────────────────────────
move "NHL/Washington_Capitals/edge.svg" \
     "NHL/Washington_Capitals/finalized/WSH_2007-2015_jersey-numbers_v1.svg"
move "NHL/Washington_Capitals/Edge-Present.svg" \
     "NHL/Washington_Capitals/finalized/WSH_2015-present_jersey-numbers_v1.svg"
move "NHL/Washington_Capitals/navy_third.svg" \
     "NHL/Washington_Capitals/finalized/WSH_current_alternate_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# NHL / Winnipeg Jets
# ─────────────────────────────────────────────
move "NHL/Winnipeg_Jets/2022_rr.svg" \
     "NHL/Winnipeg_Jets/finalized/WPG_2022_reverseretro2_jersey-numbers_v1.svg"

# ─────────────────────────────────────────────
# QMJHL
# ─────────────────────────────────────────────
move "QMJHL/giroux_gat_fixed.svg" \
     "QMJHL/Gatineau_Olympiques/wip/GAT_current_nameplate_v1.svg"
move "QMJHL/Giroux_retirement_jersey.svg" \
     "QMJHL/Gatineau_Olympiques/wip/GAT_retirement_nameplate_v1.svg"

# ─────────────────────────────────────────────
# Clean up empty directories left behind
# ─────────────────────────────────────────────
find . -type d -empty -not -path './.git/*' -delete

echo ""
echo "=== Done! Review changes with: git diff --stat ==="
echo "=== Then commit with:          git add -A && git commit -m 'refactor: reorganize and rename all fonts to new schema' ==="
