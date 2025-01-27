% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NMFSReports.R
\name{ref_figtab}
\alias{ref_figtab}
\title{Reference a figure or table}
\usage{
ref_figtab(list_obj, nickname, sublist = "number")
}
\arguments{
\item{list_obj}{A list object created by figure_list or table_list.}

\item{nickname}{A unique string that is used to identify the plot or table in figure_list or table_list, respectively.}

\item{sublist}{A string of the sublist in figure_list or table_list you want the contents returned from.}
}
\value{
The item in the list.
}
\description{
Reference a figure or table
}
\examples{
figure_list <- c()
pp <- plot(x = 1, y = 1)
figure_list <- save_figures(
   figure = pp,
   figure_list = figure_list,
   header = "blah blah blah",
   nickname = "example_figure", # a unique name you can refer back to
   cnt_chapt_content = "003",
   cnt = "012")
figure_list <- save_figures(
   figure = pp,
   figure_list = figure_list,
   header = "blah blah blah",
   nickname = "example_figure_other", # a unique name you can refer back to
   cnt_chapt_content = "003",
   cnt = "013")
figure_list
refnum <- ref_figtab(
   list_obj = figure_list,
   nickname = "example_figure",
   sublist = "number")
refnum
print(paste0("Please refer to figure ", refnum,
             " to see this figure, not the other figure."))
}
