library(shiny)
setwd("c:/shiny")

ui<-fluidPage(
  titlePanel("Basic widget"),
  fluidRow(
    column(3,h3("Buttons"),actionButton("action",label="ACTION"),br(),br(),submitButton("Submit")),
    column(3,h3("Single Checkbow"),checkboxInput("checkbox",label = "Choice A",value=T)),
    column(3,checkboxGroupInput("checkGroup",label=h3("CheckboxGroup"),
                                                      choices = list("Choice1"=1,"Choice2"=2,"Choice3"=3),selected = 1)),
    column(3,dateInput("date",label=h3("Date input"),value="2018-10-28"))
  ),
  fluidRow(
    column(3,dateRangeInput("dates",label=h3("Date range"))),
    column(3,fileInput("file",label=h3("File input"))),
    column(3,h3("Help text"),
           helpText("Note:help text isn't a true widget,",
                    "but it provides an easy way to add text to",
                    "accompany other widgets")),
    column(3,numericInput("num",label=h3("Numeric Input"),value=1))
  ),
  fluidRow(
    column(3,radioButtons("radio",label=h3("Radio Buttons"),
                          choices = list("Choice1"=1,"Choice2"=2,"Choice3"=3),selected = 1)),
    column(3,selectInput("select",label=h3("select box"),
                         choices=list("choice1"=1,"choice2"=2,"choice3"=3),selected = 1)),
    column(3,sliderInput("slider1",label=h3("Sliders"),min=0,max=100,value=50),
           sliderInput("slider2","",min=0,max=100,value=c(25,75))),
    column(3,textInput("text",label=h3("Text input"),value="Enter the text..."))
  )
)

server<-function(input,output){
  
}

shinyApp(ui,server)
