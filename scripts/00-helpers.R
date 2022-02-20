
single_df_barplot <- function(df, xcol, xlab, ylab, title) {
  ###   Intakes a dataframe with two columns representing x, y values, and plots a bar plot.
  ###   Arguments and preconditions:
  ###   df: a tibble dataframe
  ###   xcol: a character string denoting the column for the x-values in the df
  ###   ycol:  a character string denoting the column for the y-values in the df
  ###   title: a character string denoting the title of the plot
  ###   xlab:  a character string denoting the x-label of the plot
  ###   ylab:  a character string denoting the y-label of the plot
  ###   xcol and ycol must be columns in df.
  barplot <- ggplot(data=df, aes(.data[[xcol]])) +
    geom_bar() +
    ggtitle(title) +
    xlab(xlab) +
    ylab(ylab) +
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
  return(barplot)
}


plot_df_group <- function(df, group_col, plot_fn) {
  ###   Intakes a dataframe with a column, and returns a grid of plots.
  ###   Example: if group_col is STATE, then this function creates 50 plots in a grid, each containing data for each state.
  ###   df: a tibble dataframe
  ###   group_col: a character string denoting the column for to group by
  ###   plot_fn: an R function used to plot the dataframes.
  df_groups <- split(df, df[[group_col]])
  df_plots <- lapply(df_groups, plot_fn)
  num_plots <- length(df_plots)
  num_cols <- floor(sqrt(num_plots))
  do.call("grid.arrange", c(df_plots, ncol=num_cols))
}

