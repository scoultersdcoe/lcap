# Bullet Chart Script
gaps2 <- ggplot() +
  geom_bar(data = filter(achv_gap_2, group == "Non_Disadvantaged"),
           aes(x = year, y = percent), fill = "#440154FF", stat = "identity") +
  geom_bar(data = filter(achv_gap_2, group == "Disadvantaged"),
           aes(x = year, y = percent), fill = "#FDE725FF", width = .4,
           stat = "identity") +
  coord_flip() +
  scale_y_continuous(labels = scales::percent) +
  scale_fill_viridis_d(labels = c("Disadvantaged", "Non_Disadvantaged")) +
  theme(panel.grid.major.y = element_blank()) + 
  theme(legend.position = "bottom", legend.direction = "horizontal") +
  ggtitle(achv_gap_2$district) +
  labs(subtitle = "Achievement Gap Economically/Non-Economically Disadvantaged",
       caption = "Source: California Department of Education",
       x = NULL, y = NULL, fill = NULL)