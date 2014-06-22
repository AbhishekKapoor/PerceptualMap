library ("FactoMineR") 
library ("shiny") 
  shinyUI(pageWithSidebar( 
    headerPanel("Welcome to Perception-Map App"), 
    sidebarPanel( 
 helpText("Upload the .csv sheet where rows are statements and Brands are in column Any file can be uploaded but analysis is only available
if the data is in same format as the sample file, downloadable below"),
a("Correspondance sheet", href="https://dl.dropboxusercontent.com/u/46021747/Sample.csv"),     
 fileInput("df", "File data", multiple=TRUE)
    ), 
     
       mainPanel( # all of the output elements go in here 
        h4("This is Correspondance Map"), 
         
        plotOutput("caPlot",height="600px") 
       ) 
  ))
