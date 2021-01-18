library("shiny")
shinyUI(pageWithSidebar(
  titlePanel(h3("Shiny Client Data")),
  sidebarPanel(
    sliderInput(inputId = "obs", label = "Number of observation",
                max = 1000, min = 30, value = 500)
  ),
  mainPanel(
    h3("ClientData values"),
    verbatimTextOutput("clientdataText"),#Output render text table
    plotOutput("myplot")
  )
))
