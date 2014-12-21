library(shiny)
shinyUI(pageWithSidebar(
        # Application title
        headerPanel("German Diabetes Risk Score"),
        
        sidebarPanel(
                numericInput('waist', 'waist cm', 50, min =28, max = 200, step = 1),
                numericInput('height', 'height cm', 175, min = 90, max = 250, step = 1),
                numericInput('age', 'age', 45, min = 1, max = 100, step = 1),
                submitButton('Submit')
        ),
        mainPanel(
                h3('Results of prediction'),
                h4('You entered'),
                verbatimTextOutput("inputValueWaist"),
                verbatimTextOutput("inputValueHeight"),
                verbatimTextOutput("inputValueAge"),
                h4('Which resulted in a prediction score of '),
                verbatimTextOutput("prediction")
        )
 )
)
