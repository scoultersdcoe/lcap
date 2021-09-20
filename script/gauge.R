library(flexdashboard)

gauge(42, min = 0, max = 100, symbol = '%', gaugeSectors(
  success = c(80, 100), warning = c(40, 79), danger = c(0, 39)
))

achv_gap_2 <- achv_gap %>% 
  filter(district == params$district)
gauge(achv_gap_2$achievement_gap, min = 0, max = 100, symbol = '%', 
                gaugeSectors(
                  success = c(0, 9), warning = c(10, 59), danger = c(60, 100)
))
