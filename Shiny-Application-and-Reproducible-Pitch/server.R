library(shiny)
library(datasets)
library(ggplot2)

diamond_data<-diamonds
shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste("price ~", input$variable)
    })
    
    output$caption <- renderText({
        formulaText()
    })
    
    output$distPlot<- renderPlot({
        boxplot(as.formula(formulaText()), 
                data = diamond_data, col = "salmon"
        )
    })
})