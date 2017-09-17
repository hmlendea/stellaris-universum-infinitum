#!/bin/bash

MOD_DIR="universum_infinitum"

# DIRECTORIES
ANOMALIES_DIR="$MOD_DIR/anomalies"
BUILDINGS_DIR="$MOD_DIR/buildings"
CELESTIAL_BODIES_DIR="$MOD_DIR/common/random_names/base"
FLAG_DIR="$MOD_DIR/flags"
FLAG_BACKGROUNDS_DIR="$FLAG_DIR/backgrounds"
GALAXY_SIZES_DIR="$MOD_DIR/map/setup_scenarios"
NAME_LISTS_DIR="$MOD_DIR/common/name_lists"
PLANETARY_MODIFIERS_DIR="$MOD_DIR/planet_modifiers"
PRESCRIPTED_COUNTRIES_DIR="$MOD_DIR/prescripted_countries"
SPECIES_NAMES_DIR="$MOD_DIR/species_names"
STRATEGIC_RESOURCES_DIR="$MOD_DIR/strategic_resources"
SYSTEM_INITIALISERS_DIR="$MOD_DIR/common/solar_system_initializers"
TILE_BLOCKERS_DIR="$MOD_DIR/tile_blockers"

# ACTUAL COUNTING
ANOMALIES_COUNT=
BUILDINGS_COUNT=
CELESTIAL_BODIES_COUNT=$(cat $CELESTIAL_BODIES_DIR/* | sed '/^\s*$\|=\|}/d' | uniq | wc -l)
FLAG_BACKGROUNDS_COUNT=$(ls $FLAG_BACKGROUNDS_DIR | wc -l)
FLAG_SYMBOLS_COUNT=$(find $FLAG_DIR -maxdepth 2 -type f | grep -v "^$FLAG_BACKGROUNDS_DIR" | wc -l)
GALAXY_SIZES_COUNT=$(ls $GALAXY_SIZES_DIR | wc -l)
NAME_LISTS_COUNT=$(ls $NAME_LISTS_DIR | wc -l)
PLANETARY_MODIFIERS_COUNT=
PRESCRIPTED_COUNTRIES_COUNT=$(ls $PRESCRIPTED_COUNTRIES_DIR | wc -l)
SPECIES_NAMES_COUNT=
STRATEGIC_RESOURCES_COUNT=
SYSTEM_INITIALISERS_COUNT=$(ls $SYSTEM_INITIALISERS_DIR | wc -l)
TILE_BLOCKERS_COUNT=

echo "Anomalies:" $ANOMALIES_COUNT
echo "Buildings:" $BUILDINGS_COUNT
echo "Celestial bodies:" $CELESTIAL_BODIES_COUNT
echo "Flag backgrounds:" $FLAG_BACKGROUNDS_COUNT
echo "Flag symbols:" $FLAG_SYMBOLS_COUNT
echo "Galaxy sizes:" $GALAXY_SIZES_COUNT
echo "Name lists:" $NAME_LISTS_COUNT
echo "Planetary modifiers:" $PLANETARY_MODIFIERS_COUNT
echo "Prescripted countries:" $PRESCRIPTED_COUNTRIES_COUNT
echo "Species names:" $SPECIES_NAMES_COUNT
echo "Strategic resources:" $STRATEGIC_RESOURCES_COUNT
echo "System initialisers:" $SYSTEM_INITIALISERS_COUNT
echo "Tile blockers:" $TILE_BLOCKERS_COUNT

