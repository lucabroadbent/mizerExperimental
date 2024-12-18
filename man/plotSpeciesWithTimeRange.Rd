% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotSpeciesWithTimeRange.R
\name{plotSpeciesWithTimeRange}
\alias{plotSpeciesWithTimeRange}
\title{Plot MizerSim Relative Biomass per Species Across Varying Timescales}
\usage{
plotSpeciesWithTimeRange(
  harvestedprojection,
  unharvestedprojection,
  chosentime1,
  chosentime2
)
}
\arguments{
\item{harvested}{A mizerSim object}

\item{unharvested}{A mizerSim object - to compare to.}

\item{chosentime}{The year to plot}
}
\value{
A ggplot object that plots 3 bars per species - in the short,
chosen and long time - it plots the relative biomass of each species in
comparison to the unharvested.
}
\description{
This function takes two mizerSim objects and calculates the relative \%
change in each given species in the chosen year, short term (1/2 of the
chosen year) and the long term (2x the chosen year). The mizerSim
objects must have tmax = 2 * chosentime2.
}
\examples{
harvested <- getBiomass(NS_sim)
unharvested <- getBiomass(NS_sim)
plotSpeciesWithTimeRange(harvested, unharvested, 1, 2)

}
