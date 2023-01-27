make_art <-
  function(seed = 1,
           color = "steelblue1",
           background = "blue4") {
    library(jasmines)
    library(dplyr)
    library(ggplot2)
    p0 <- use_seed(seed) %>%
      scene_bubbles(n = sample(1:150, 1),
                    grain = sample(1:2000, 1)) %>%
      unfold_tempest(iterations = sample(1:10, 1),
                     scale = sample(0.01:.099, 1)) %>%
      style_ribbon(color = color,
                   alpha = c(sample(0.05: 0.50, 1), sample(0.3:0.8,1)),
                   background = background)
    print(p0)
    ggsave(
      "random_art_test.png",
      p0,
      width = 50,
      height = 50,
      units = "cm"
    )
  }