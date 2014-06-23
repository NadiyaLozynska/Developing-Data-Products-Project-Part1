shinyServer(function(input, output) {
  
  # You can access the value of the widget with input$num, e.g.
  discriminant <- reactive({sqrt(input$b^2-4*input$a*input$c)})
  output$Discriminant <- renderText({ discriminant() })
  x1 <- reactive({(-input$b+discriminant())/2*input$a})
  x2 <- reactive({(-input$b-discriminant())/2*input$a})
  output$X1 <- renderText({ x1() })
  output$X2 <- renderText({ x2() })
  
})