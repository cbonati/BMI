library(shiny)

shinyUI(fluidPage(
  titlePanel("Body Mass Index Application"),
  h5("Developing Data Products, Johns Hopkins University / Coursera, January 2015"),
  
  sidebarLayout(
    
    sidebarPanel(
      h4("Mass and Height inputs"),
      helpText("Please enter the mass (in kg) and the heigth (in cm) of the individual"),
    
      sliderInput("Mass", label = strong("Mass of the individual (in kg)"), min = 1, max = 150, value = 75),
      
      sliderInput("Height", label = strong("Height of the individual (in cm)"), min = 40, max = 250, value = 177)
    ),
    
    mainPanel(
      h4("BMI Computation"),
      textOutput("text1"),
      textOutput("text2"),
      textOutput("text3")
      )
  )
))