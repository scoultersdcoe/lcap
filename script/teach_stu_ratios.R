library(readr)
library(dplyr)

district_teach_stu <- 
bind_rows(
  lapply(
    list.files(
      "./data/ratios_districts", 
      pattern = ".csv", 
      full.names = TRUE
    ), 
    read_csv)
)

write.csv(district_teach_stu, file = "./data/district_ratios.csv")