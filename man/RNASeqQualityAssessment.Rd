% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cmd_batch_rnaseq_quality_assessment.R
\name{RNASeqQualityAssessment}
\alias{RNASeqQualityAssessment}
\title{RNASeqQualityAssessment}
\usage{
RNASeqQualityAssessment(RNASeqRParam, which.trigger = "OUTSIDE",
  INSIDE.path.prefix = NA, check.s4.print = TRUE)
}
\arguments{
\item{RNASeqRParam}{S4 object instance of experiment-related
parameters}

\item{which.trigger}{Default value is \code{OUTSIDE}. User should not change
this value.}

\item{INSIDE.path.prefix}{Default value is \code{NA}. User should not change
this value.}

\item{check.s4.print}{Default \code{TRUE}. If \code{TRUE}, the result of
checking \code{RNASeqRParam} will be reported in
'Rscript_out/Environment_Set.Rout'. If \code{FALSE}, the result of checking
\code{RNASeqRParam} will not be in
'Rscript_out/Environment_Set.Rout'}
}
\value{
None
}
\description{
Assess the quality of '.fastq.gz' files for RNA-Seq workflow in R shell.
  This step is optional in the whole RNA-Seq workflow. \cr
  This function reports the quality assessment result in packages
  \code{systemPipeR}
  For \code{systemPipeR},
  'RNASeq_results/QA_results/Rqc/systemPipeR/fastqReport.pdf'
  will be created. \cr If you want to assess the quality of '.fastq.gz'
  files for the following RNA-Seq workflow in background,
  please see \code{RNASeqQualityAssessment_CMD()} function.
}
\examples{
data(yeast)
\dontrun{
RNASeqQualityAssessment(RNASeqRParam = yeast)}
}
\author{
Kuan-Hao Chao
}
