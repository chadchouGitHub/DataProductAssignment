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
                verbatimTextOutput("prediction"),
                h5('This score is base on a Type2 Diabetes Study in German'),
                h6('Schulze, M. B. et al. An accurate risk score based on anthropometric, dietary, and lifestyle factors to predict the development of type 2 diabetes. Diabetes Care 30, 510–5 (2007). ')
               
                
        )
 )
)
