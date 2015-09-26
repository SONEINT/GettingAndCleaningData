shinyUI(fluidPage(
  titlePanel("TermClust"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create tweets term frequencies trees with clusters (subject : Aleppo)"),
      
      selectInput(inputId = "select",
                  label = h6("hierarchical cluster analysis agglomeration method"),
                  choices = list("ward.D", 
                                 "ward.D2", 
                                 "single",
                                 "complete",
                                 "average",
                                 "mcquitty",
                                 "median",
                                 "centroid"),
                  selected = "complete",
                  multiple = FALSE,
                  selectize = TRUE,
                  width = NULL),
      
      sliderInput(inputId = "slider1",
                  label = h6("Cut the dendogram in k clusters. BE SURE k >= h"),
                  min = 1,
                  max = 20,
                  value = 10,
                  animate = TRUE),
      
      sliderInput(inputId = "slider2",
                  label = h6("Cut the dendogram in height h. BE SURE h <= k"),
                  min = 1,
                  max = 20,
                  value = 10,
                  animate = TRUE),
      
      sliderInput(inputId = "slider3",
                  label = h6("Remove sparce terms in data set : decrease to remove less frequent terms"),
                  min = 0,
                  max = 0.99,
                  value = 0.99,
                  animate = TRUE)
    ),
    
    mainPanel(
      tabsetPanel(position = "above",
                  tabPanel("clust", plotOutput("clust")),
                  tabPanel("file", verbatimTextOutput("file"))
      )
    )
  )
))