library(shiny)

# Function that calculates bacterial exponential growth based on inital number 
# of bacteria, doubling time and incubation time:
BacterialGrowth <- function(N0, dt, t) {format(N0*(2.718282^((1/dt)*t)),
                                                    scientific = TRUE, digits = 3)}

shinyServer(function(input, output) {
                output$N0 <- renderText({input$N0})
                output$dt <- renderText({input$dt})
                output$t <- renderText({input$t})
                output$result <- renderText({BacterialGrowth(input$N0, input$dt, input$t)})
                output$mass <- renderText({as.numeric({BacterialGrowth(input$N0, input$dt, input$t)})*(10^-12)}) 
        }
)

