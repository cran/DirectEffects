% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sens.R
\name{plot.cdesens}
\alias{plot.cdesens}
\title{Plot output from cdesens}
\usage{
\method{plot}{cdesens}(
  x,
  level = 0.95,
  xlim = NULL,
  ylim = NULL,
  xlab = NULL,
  ylab = "Estimated ACDE",
  bty = "n",
  col = "black",
  lwd = 2,
  ci.col = "grey70",
  ref.lines = TRUE,
  ...
)
}
\arguments{
\item{x}{output from \env{cdesens}}

\item{level}{level of confidence interval to plot}

\item{xlim}{the x limits (x1, x2) of the plot for the sensitivity
analysis parameter, rho. Default is to use the range of
\env{rho}.}

\item{ylim}{the y limits of the plot for the estimated CDEs.
Default is to show the all of the confidence intervals.}

\item{xlab}{label for the x axis.}

\item{ylab}{label for the y axis.}

\item{bty}{a character string which determined the type of box
which is drawn about plots. Defaults to not drawing a box. See
\link{par} for more information.}

\item{col}{color for the line indicating the point estimates of the
bias-adjusted ACDE.}

\item{lwd}{line width for the line indicating the point estimates of the
bias-adjusted ACDE.}

\item{ci.col}{color for the polygon that shows the confidence
intervals.}

\item{ref.lines}{a logical indicating whether horizontal and
vertical lines at 0 should be plotted.}

\item{...}{Other parameters to pass on to \env{plot()}}
}
\description{
Plot output from cdesens
}
