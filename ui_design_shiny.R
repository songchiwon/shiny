library(shiny)
setwd("c:/shiny")
ui<-fluidPage(
  titlePanel("title Panel"),
  sidebarLayout(
    position = "right" , #사이드바 위치 지정
    sidebarPanel("sidebar panel"),
    mainPanel(
      h1("first level"),
      h2("second level"),
      h3("third level"),
      "basic level",
      p("p creates a paragraph of text"),
      p("new p starts a nes paragraph"),
      strong("strong makes bold text"),
      code("code displays text similar to computer code"),
      br(),
      p("if you want to change color in paragraph",
        span("groups of words",style="color:blue"),
        "that appear inside a paragraph"),
      img(src="pizza_image.png",height=100,width=100) #img는 working directory 안에 놓자
    )
  )
)

server<-function(input,output){
  
}
shinyApp(ui,server)



