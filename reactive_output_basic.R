library(shiny)
setwd("c:/shiny")

ui<-fluidPage(
  titlePanel("censusvis"),
  sidebarPanel(
    helpText("Create demographic maps with information from the 2010 us cencus"),
    selectInput("var",label="choose a variable to display",
                choices = c("Percent white","Percent black","Percent Hispanic","Percent Asian"),selected = 1),
    sliderInput("range",label="Range of Interest:",min=0,max=100,value=c(0,100))
  ),
  mainPanel(
    textOutput("text1"),
    textOutput("text2")
  )
)

server<-function(input,output){
  output$text1<-renderText({
    paste("You have selected :",input$var)
  })
  output$text2<-renderText({
    paste("You have chosen a range that goes from ",input$range[1],input$range[2])
  })
}

shinyApp(ui,server)
