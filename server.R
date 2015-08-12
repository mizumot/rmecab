library(shiny)
library(psych)
library(RMeCab)



shinyServer(function(input, output) {
    
    

    kts <- reactive({
        
        x <- input$textarea.in
        RMeCabC(x)
    
    })
    
    output$kts.out <- renderPrint({
        kts()
    })
    
    
    
    #freq <- reactive({
        
        #x <- input$textarea.in
        
        #write(x, file="~/srv/shiny-server/tmp/tmp.txt")
        
        #RMeCabFreq("~/srv/shiny-server/tmp/tmp.txt")
        
        #})
    
    #output$freq.out <- renderPrint({
    #freq()
    #})

    
    
    
    


    
    info <- reactive({
        info1 <- paste("This analysis was conducted with ", strsplit(R.version$version.string, " \\(")[[1]][1], ".", sep = "")# バージョン情報
        info2 <- paste("It was executed on ", date(), ".", sep = "")# 実行日時
        cat(sprintf(info1), "\n")
        cat(sprintf(info2), "\n")
    })
    
    output$info.out <- renderPrint({
        info()
    })

    
    
})