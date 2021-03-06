% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cmd_batch_rnaseq_environment_set.R
\name{RNASeqEnvironmentSet}
\alias{RNASeqEnvironmentSet}
\title{RNASeqEnvironmentSet}
\usage{
RNASeqEnvironmentSet(RNASeqRParam, which.trigger = "OUTSIDE",
  INSIDE.path.prefix = NA, install.hisat2 = TRUE,
  install.STAR = TRUE, install.stringtie = TRUE,
  install.gffcompare = TRUE, check.s4.print = TRUE)
}
\arguments{
\item{RNASeqRParam}{S4 object instance of experiment-related
parameters}

\item{which.trigger}{Default value is \code{OUTSIDE}. User should not change
this value.}

\item{INSIDE.path.prefix}{Default value is \code{NA}. User should not change
this value.}

\item{install.hisat2}{Whether to install 'HISAT2' in this function step.
Default value is\code{TRUE}.
Set \code{FALSE} to skip 'HISAT2' installation.}

\item{install.STAR}{Whether to install 'STAR' in this function step.
Default value is\code{TRUE}.
Set \code{FALSE} to skip 'STAR' installation.}

\item{install.stringtie}{Whether to install 'StringTie'
in this function step. Default value is \code{TRUE}.
Set\code{FALSE} to skip 'StringTie' installation.}

\item{install.gffcompare}{Whether to install 'Gffcompare'
in this function step. Default value is \code{TRUE}.
Set\code{FALSE} to skip 'Gffcompare' installation.}

\item{check.s4.print}{Default \code{TRUE}. If \code{TRUE},
the result of checking \code{RNASeqRParam} will be reported in
'Rscript_out/Environment_Set.Rout'. If \code{FALSE}, the result of checking
\code{RNASeqRParam} will not be in
'Rscript_out/Environment_Set.Rout'.}
}
\value{
None
}
\description{
Set up the environment for the following RNA-Seq workflow in R shell\cr
  This function do 4 things :\cr
  \enumerate{
    \item Create file directories.\cr
    \item Install necessary tools. \cr
    \item Export 'RNASeq_bin/' to the R environment. \cr
    \item Check command of tools. \cr
  }
  First it will create 'gene_data/', 'RNASeq_bin/', 'RNASeq_results/',
  'Rscript/', 'Rscript_out/' directories. \cr Afterwards, 'Hisat2',
  'Stringtie', 'Gffcompare' will be installed under
  'RNASeq_bin/Download/' and be unpacked under 'RNASeq_bin/Unpacked/'. \cr
  'RNASeq_bin/' will be added to the R environment and
  validity of tools will be checked.\cr
  Any ERROR occurs will be reported and the program will be terminated.\cr
  If you want to set up the environment for the following RNA-Seq workflow
  in background, please see \code{RNASeqEnvironmentSet_CMD()} function.
}
\examples{
data(yeast)
\dontrun{
RNASeqEnvironmentSet(RNASeqRParam = yeast)}
}
\author{
Kuan-Hao Chao
}
