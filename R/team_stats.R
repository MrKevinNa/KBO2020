
draw_teams <- function(data) {

  ui <- fluidPage(
    mainPanel(
      plotOutput(outputId = 'graph')
    )
  )

  server <- function(input, output, session) {
    output$graph <- renderPlot({
      teamStat <- data %>%
        select(팀명, 안타) %>%
        group_by(팀명) %>%
        summarise(안타 = mean(x = 안타))

      ggplot(data = teamStat,
             mapping = aes(x = 팀명, y = 안타, fill = 팀명)) +
        geom_col() +
        ggtitle(label = '팀별 평균 안타 비교') +
        theme_bw() +
        theme(text = element_text(family = 'NanumGothic'),
              plot.title = element_text(hjust = 0.5, face = 'bold'))
    })
  }

  shinyApp(ui = ui, server = server)
}
