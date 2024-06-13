# Persona-based scenario analysis

The purpose of this repository is to perform the intermediate modeling steps in the preparation of a persona-based large-scale agent-based transport simulation for the Île-de-France region in France. 

The synthetic population pipeline can be generated as described in the branch `personas` of
https://github.com/eqasim-org/ile-de-france

## Input

To use this repository, two files are needed:

- `input/RP2019_INDCVIZA_csv.zip` should be the 2019 census data for region A (Île-de-France)
- `data/clusters_2019.csv` should be a file indicating the baseline persona of every observation in the 2019 census (one column called `ID`)

## Scenario calibration

The notebook `01 Scenario calibration.ipynb` will calibrate the distributions of household size, number orf household cars and location type (wokring in same municipality as home, working in same department, ...) to match certain predefined targets that are given on top of the notebook.

The output are four files, one per scenario, that describe the distributions. The files can be used as input to the population synthesis process.

## Persona calibration

Based on the calibrated distributions, a new distribution of personas across the population should be obtained that "generates" these distributions. The process is performed in `02 Persona calibration.ipynb`.

The output are four files, one per scenario, that describe the persona distribution. The files can be used as input to the population synthesis process.

## Scenario analysis

After running the pipeline, one can use `03 Validation.ipynb` to validate that all the marginals have been taken into account properly in the scenario generation. Note that population growth is included in those generated scenarios.

The scenarios should be put into `output/scenarios`, so `output/scenarios/idf_1pct_s1_persons.csv`, for instance. The scenarios should be `["baseline", "projection", "s1", "s2", "s3", "s4"]`.
