library(tm)
term <- readRDS("myTdm2.rds")
source("word.clust.R")

shinyServer(function(input, output) {
  
  output$file <- renderPrint({
    
    word.file(file = term, sparse = input$slider3)
    readLines(con = "word.frequencies.txt")
    
  })
  
  output$clust <- renderPlot({ 
    
    method <- switch(input$select,
                   "ward.D" = "ward.D",
                   "ward.D2" = "ward.D2", 
                   "single" = "single",
                   "complete" = "complete",
                   "average" = "average",
                   "mcquitty" = "mcquitty",
                   "median" = "median",
                   "centroid" = "centroid")
    
    word.clust(file = term,
               k = input$slider1,
               h = input$slider2,
               sparse = input$slider3,
               method = input$select)

  })
  
}
)