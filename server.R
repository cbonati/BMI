library(shiny)


shinyServer(function(input, output) {
  
  output$text1 <- renderText({paste("You have selected a Mass of",input$Mass,"kg, and a Height of",input$Height,"cm.")})
  output$text2 <- renderText({paste("Consequently, the BMI is equal to",round(100*100*input$Mass/(input$Height*input$Height),digits=2),",")})                             
  
  output$text3 <- renderText({paste("and it corresponds to the",
                                    
    if(                                                            100*100*input$Mass/(input$Height*input$Height) < 15    ) ("Very severely underweight") else
    if( (15 < 100*100*input$Mass/(input$Height*input$Height)) &   (100*100*input$Mass/(input$Height*input$Height) < 16)   ) ("Severely underweight") else
    if( (16 < 100*100*input$Mass/(input$Height*input$Height)) &   (100*100*input$Mass/(input$Height*input$Height) < 18.5) ) ("Underweight") else
    if( (18.5 < 100*100*input$Mass/(input$Height*input$Height)) & (100*100*input$Mass/(input$Height*input$Height) < 25)   ) ("Normal (healthy weight)") else
    if( (25 < 100*100*input$Mass/(input$Height*input$Height)) &   (100*100*input$Mass/(input$Height*input$Height)   < 30) ) ("Overweight") else
    if( (30 < 100*100*input$Mass/(input$Height*input$Height)) &   (100*100*input$Mass/(input$Height*input$Height)   < 35) ) ("Obese Class I (Moderately obese)") else
    if( (35 < 100*100*input$Mass/(input$Height*input$Height)) &   (100*100*input$Mass/(input$Height*input$Height)   < 40) ) ("Obese Class II (Severely obese)") else
    if(  40 < 100*100*input$Mass/(input$Height*input$Height)                                                              ) ("Obese Class III (Very severely obese)")                               
    ,"category." )   })
}
)