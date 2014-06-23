shinyUI(fluidPage(
    
  titlePanel("Finding the roots of quadratic equation (ax^2+bx+c=0)"),
  sidebarLayout(
  sidebarPanel(
  h3("Please enter the coefficients"),
    numericInput("a", label = h4("Coefficient a"), value = 2),
    numericInput("b", label = h4("Coefficient b"), value = 10),
    numericInput("c", label = h4("Coefficient c"), value = 2)),
  mainPanel(
    h3("Discriminant is:"),
    textOutput("Discriminant"),
    h3("The roots are:"),
    textOutput("X1"),
    textOutput("X2")
    )
  )
))