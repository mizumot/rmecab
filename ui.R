library(shiny)
library(psych)
library(RMeCab)




shinyUI(pageWithSidebar(


    headerPanel("RMeCabのテスト"),


    sidebarPanel(

        p("Text input:"),
        tags$textarea(id="textarea.in", rows=30, cols=10, "国境の長いトンネルを抜けると雪国であった。夜の底が白くなった。信号所に汽車が止まった。向側の座席から娘が立って来て、島村の前のガラス窓を落とした。雪の冷気が流れ込んだ。")
    ), #sidebarPanel(


        mainPanel(
            tabsetPanel(

                tabPanel("形態素解析",
                    verbatimTextOutput("kts.out"),
                    br(),
                    br(),
                    strong('R session info'),
                    verbatimTextOutput("info.out")
                ), # tabPanel(


#tabPanel("頻度",
#verbatimTextOutput("freq.out")
#), # tabPanel(
                id="tab"

            ) # tabsetPanel(
        ) #mainPanel(

)) # shinyUI(pageWithSidebar(