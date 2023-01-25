cheat <- function(questionnumber) {
  if (questionnumber == "3.1.1") {
    grades <- rnorm(63, 7.2, 1)
    hist(grades)
  }
  else if (questionnumber == "3.1.9") {
    library(ggstatsplot)
    ggbetweenstats(data = ToothGrowth, x = supp, y = len)
  }
  else if (questionnumber == "3.1.17") {
    print("The shortcut is Ctrl + Shift + A")
  }
  else {
    stop("Input must be a known question number of format 3.1.1")
  }
}