single_df_barplot <- function(df, xcol, ycol, xlab, ylab, title) {
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
    geom_bar(aes(y=df[[ycol]]), stat="identity", position ="identity", alpha=.5, fill='lightblue', color='lightblue4') + 
    ggtitle(title) +
    xlab(xlab) + 
    ylab(ylab) +
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
  return(barplot)
}

