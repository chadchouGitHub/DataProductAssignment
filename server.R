diabetesRisk <- function(waist, height, age) waist*7.4-height*2.4+age*4.3

shinyServer(
        function(input, output) {
                output$inputValueWaist <- renderPrint({input$waist})
                output$inputValueHeight <- renderPrint({input$height})
                output$inputValueAge <- renderPrint({input$age})
                output$prediction <- renderPrint({diabetesRisk(input$waist,
                                                               input$height,
                                                               input$age
                                                               )})
        }
)