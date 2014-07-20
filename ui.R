library(shiny)
library(markdown)

shinyUI(fluidPage(
        
          pageWithSidebar(
                  # Application title and documentation
                  headerPanel(includeMarkdown("include.md")),
               
                        
                  # Data input panel
                  sidebarPanel(
                          numericInput(inputId="N0", label = "Initial number 
                                       of bacteria", 10, min = 1, max = +Inf, step = 1),
                          numericInput(inputId="dt", label = "Doubling Time (min)", 
                                       30, min = 1, max = +Inf, step = 1),
                          numericInput(inputId="t", label = "Incubation Time (min)", 
                                       720, min = 60, max = +Inf, step = 1),
                          submitButton('Submit')
                  ),
                  # Output panel
                  mainPanel(
                          h4("Growing"),
                          verbatimTextOutput("N0"),
                          h4("bacteria with a doubling time of"),
                          verbatimTextOutput("dt"),
                          h4("minutes for a total of"),
                          verbatimTextOutput("t"),
                          h4('minutes results in a final number of'),
                          verbatimTextOutput("result"),
                          h4('bacteria with a total mass of'),
                          verbatimTextOutput("mass"),
                          h4('grams.')
                          
                               
                  )
          )
))