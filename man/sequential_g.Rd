% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DirectEffects.R
\name{sequential_g}
\alias{sequential_g}
\title{Perform linear sequential g-estimation to estimate the controlled
direct effect of a treatment net the effect of a mediator.}
\usage{
sequential_g(
  formula,
  data,
  subset,
  weights,
  na.action,
  offset,
  contrasts = NULL,
  verbose = TRUE,
  ...
)
}
\arguments{
\item{formula}{formula specification of the first-stage,
second-stage, and blip-down models. The right-hand side of the
formula should have three components separated by the \code{|},
with the first component specifying the first-stage model with
treatment and any baseline covariates, the second component
specifying the intermediate covariates for the first-stage, and
the third component specifying the blip-down model. See Details
below for more information.}

\item{data}{A dataframe to apply \code{formula} on.}

\item{subset}{A vector of logicals indicating which rows of \code{data} to keep.}

\item{weights}{an optional vector of weights to be used in the fitting
    process.  Should be \code{NULL} or a numeric vector.
    If non-NULL, weighted least squares is used with weights
    \code{weights} (that is, minimizing \code{sum(w*e^2)}); otherwise
    ordinary least squares is used.  See also \sQuote{Details},}

\item{na.action}{a function which indicates what should happen
    when the data contain \code{NA}s.  The default is set by
    the \code{na.action} setting of \code{\link{options}}, and is
    \code{\link[stats]{na.fail}} if that is unset.  The \sQuote{factory-fresh}
    default is \code{\link[stats]{na.omit}}.  Another possible value is
    \code{NULL}, no action.  Value \code{\link[stats]{na.exclude}} can be useful.}

\item{offset}{this can be used to specify an \emph{a priori} known
    component to be included in the linear predictor during fitting.
    This should be \code{NULL} or a numeric vector or matrix of extents
    matching those of the response.  One or more \code{\link[stats]{offset}} terms can be
    included in the formula instead or as well, and if more than one are
    specified their sum is used.  See \code{\link[stats]{model.offset}}.}

\item{contrasts}{an optional list. See the \code{contrasts.arg}
    of \code{\link[stats]{model.matrix.default}}.}

\item{verbose}{logical indicating whether to suppress progress bar. Default is FALSE.}

\item{...}{For \code{lm()}: additional arguments to be passed to the low level
    regression fitting functions (see below).}
}
\value{
Returns an object of \code{class} A \code{"seqg"}. Similar
to the output of a call to \code{lm}. Contains the following
components:
\itemize{
  \item coefficients: a vector of named coefficients for the direct
effects model.
  \item residuals: the residuals, that is the blipped-down outcome
minus the fitted values.
  \item rank: the numeric rank of the fitted linear direct effects
model.
  \item fitted.values: the fitted mean values of the direct effects
model.
  \item weights: (only for weighted fits) the specified weights.
  \item df.residual: the residual degrees of freedom for the direct
effects model.
  \item aliased: logical vector indicating if any of the terms were
  dropped or aliased due to perfect collinearity.
  \item terms: the list of \code{terms} object used. One for the
  baseline covariates and treatment (\code{X}) and one for the
  variables in the blip-down model (\code{M}).
  \item formula: the \code{formula} object used, possibly modified
to drop a constant in the blip-down model.
  \item call: the matched call.
  \item na.action: (where relevant) information returned by
  \code{model.frame} of the special handling of \code{NA}s.
  \item xlevels: the levels of the factor variables.
  \item contrasts:  the contrasts used for the factor variables.
  \item first_mod: the output from the first-stage regression model.
  \item model: full model frame, including all variables.
  \item Ytilde: the blipped-down response vector.
  \item X: the model matrix for the second stage.
  \item M: the model matrix for demediation/blip-down function.
}
In addition, non-null fits will have components \code{assign},
\code{effects}, and \code{qr} from the output of \code{lm.fit} or
\code{lm.wfit}, whichever is used.
}
\description{
Perform linear sequential g-estimation to estimate the controlled
direct effect of a treatment net the effect of a mediator.
}
\details{
The \code{sequential_g} function implements the linear
sequential g-estimator developed by Vansteelandt (2009) with the
consistent variance estimator developed by Acharya, Blackwell, and
Sen (2016).

 The formula specifies specifies the full first-stage model
  including treatment, baseline confounders, intermediate
  confounders, and the mediators. The user places \code{|} bars to
  separate out these different components of the model. For
  example, the formula should have the form \code{y ~ tr + x1 + x2
  | z1 + z2 | m1 + m2}. where \code{tr} is the name of the
  treatment variable, \code{x1} and \code{x2} are baseline
  covariates, \code{z1} and \code{z2} are intermediate covariates,
  and \code{m1} and \code{m2} are the names of the mediator
  variables. This last set of variables specify the 'blip-down' or
  'demediation' function that is used to remove the average effect
  of the mediator (possibly interacted) from the outcome to create
  the blipped-down outcome. This blipped-down outcome is the passed
  to a standard linear model with the covariates as specified for
  the direct effects model.

See the references below for more details.
}
\examples{
data(ploughs)

form_main <- women_politics ~ plow +
  agricultural_suitability + tropical_climate + large_animals +
  political_hierarchies + economic_complexity +
  rugged | years_civil_conflict +
  years_interstate_conflict  + oil_pc +
  european_descent + communist_dummy + polity2_2000 +
  serv_va_gdp2000 | centered_ln_inc + centered_ln_incsq

direct <- sequential_g(form_main, ploughs)

summary(direct)
}
\references{
Vansteelandt, S. (2009). Estimating Direct Effects in
Cohort and Case-Control Studies. Epidemiology, 20(6), 851-860.

Acharya, Avidit, Blackwell, Matthew, and Sen, Maya. (2016)
"Explaining Causal Effects Without Bias: Detecting and Assessing
Direct Effects." American Political Science Review 110:3 pp.
  512-529
}
