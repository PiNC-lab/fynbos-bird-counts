# Fynbos bird counts

Point counts of birds at eight fynbos sites near Cape Town, four restored after alien clearing and four unrestored, surveyed monthly from January to April 2026.

This is a small demonstration project used in the lab's introduction to Git and GitHub. The data are simulated.

## Data

`data/bird_counts.csv` has one row per species per visit.

| Column | Description |
|---|---|
| site | Site code, S01 to S08 |
| treatment | `restored` or `unrestored` |
| date | Survey date (YYYY-MM-DD) |
| species | Four-letter species code |
| count | Number of individuals recorded |

Raw field sheets and site photos are not kept in this repository.

## Running the analysis

Open `fynbos-bird-counts.Rproj` in RStudio and run the scripts in order:

1. `R/01_load_data.R` reads and tidies the data.
2. `R/02_summarise.R` calculates mean counts and species richness per site.
3. `R/03_plot_abundance.R` plots mean counts by site.
4. `R/04_model.R` fits a model of abundance by treatment.

Each script sources the ones it depends on, so any of them can be run on its own.

Requires the ggplot2 package.
