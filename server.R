library (FactoMineR)
library (shiny)
shinyServer(function(input, output) {
  
  output$caPlot <- renderPlot({
    inFile <- input$df
    if (is.null(inFile))
      return(NULL)
    dataset<-read.csv(inFile$
                        datapath, header=T, stringsAsFactors =F)
    row.names(dataset)=dataset[,1]
    dataset[,1]=NULL ### Not required if the call below is CA(dataset[,-1],graph=FALSE)
    ca2 = CA(dataset, graph = FALSE) 
    plot(ca2)
    
  })
})
