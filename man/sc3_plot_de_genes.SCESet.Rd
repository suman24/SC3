% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotMethods.R
\docType{methods}
\name{sc3_plot_de_genes.SCESet}
\alias{sc3_plot_de_genes}
\alias{sc3_plot_de_genes,SCESet-method}
\alias{sc3_plot_de_genes.SCESet}
\title{Plot expression of DE genes of the clusters identified by SC3 as a heatmap}
\usage{
sc3_plot_de_genes.SCESet(object, k, p.val = 0.01, show_pdata = NULL)

\S4method{sc3_plot_de_genes}{SCESet}(object, k, p.val = 0.01,
  show_pdata = NULL)
}
\arguments{
\item{object}{an object of 'SCESet' class}

\item{k}{number of clusters}

\item{p.val}{significance threshold used for the DE genes}

\item{show_pdata}{a vector of colnames of the pData(object) table. Default is NULL.
If not NULL will add pData annotations to the columns of the output matrix}
}
\description{
Differential expression is calculated using the non-parametric 
Kruskal-Wallis test. A significant p-value indicates that gene 
expression in at least one cluster stochastically dominates one other cluster. 
SC3 provides a list of all differentially expressed genes with 
adjusted p-values < 0.01 and plots gene expression profiles of the 50 
genes with the lowest p-values. Note that the calculation of differential 
expression after clustering can introduce a bias in the distribution of 
p-values, and thus we advise to use the p-values for ranking the genes only.
}

