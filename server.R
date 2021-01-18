library(shiny)
shinyServer(function(input, output, session){
  cdata<- session$clientData
  output$clientdataText<- renderText({
    cnames<- names(cdata)
    allvalues<- lapply(cnames, function(name){
      paste(name, cdata[[name]], sep = "")
    })
    paste(allvalues, collapse = "/n")
    }
  )
  output$myplot<- renderPlot({
    hist(rnorm(input$obs), main = 'Generated in renderPlot()')
  })
})
