% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trans_binarytree.R
\name{trans_binarytree}
\alias{trans_binarytree}
\title{Transition matrix to binary tree}
\usage{
trans_binarytree(names, depth = 2)
}
\arguments{
\item{names}{Node names}

\item{depth}{Depth of tree}
}
\value{
Matrix of TRUE and FALSE
}
\description{
This is adapted from \code{mstate::trans.illness}.
Create a complete binary tree transition matrix.
}
\examples{

trans_binarytree(c("A", "B"), depth = 2)

}
