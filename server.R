# From :: https://github.com/rstudio/shinyapps/blob/master/guide/guide.md

library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
     
     dataset <- reactive(function() {
          diamonds[sample(nrow(diamonds), input$sampleSize),]
     })
     
     output$plot <- reactivePlot(function() {
          
          p <- ggplot(dataset(), 
                      aes_string(x=input$x, y=input$y)) + geom_point()
          
          # Set color
          if (input$color != 'None')
               p <- p + aes_string(color=input$color)
          
          # Set facets
          facets <- paste(input$facet_row, '~', input$facet_col)
          if (facets != '. ~ .')
               p <- p + facet_grid(facets)
          
          # Set jitter
          if (input$jitter)
               p <- p + geom_jitter()
          
          # Set smooth
          if (input$smooth)
               p <- p + geom_smooth()
          
          print(p)
          
     }, height=700)
     
})