library(shiny)
library(shinythemes)

shinyUI(fluidPage(theme = shinytheme("superhero"),
                  navbarPage("My Shiny application",
                             tabPanel("Analysis",
                                      sidebarPanel(
                                          selectInput("variable", "Diamonds Attributes:",
                                                      list("Cut" = "cut", 
                                                           "Clarity" = "clarity",
                                                           "Color" = "color") 
                                          ) #selectInput
                                      ), # sidebarPanel
                                      
                                      mainPanel(
                                          h3(textOutput("caption")),
                                          plotOutput(outputId = "distPlot")
                                      ) # mainPanel
                                      
                             ), #tabPanel
                             
                             tabPanel("Summary",
                                      mainPanel(
                                          h1("Instructions:"),
                                          h4("- Select diamonds attributes from dropdown in the sidebarPanel "),
                                          h4("- The mainPanel will display the plot for corresponding dataframe."),
                                          h1("Diamonds Dataset"),
                                          h4("Prices of over 50,000 round cut diamonds"),
                                          h3("Description"),
                                          h6(" A dataset containing the prices and other attributes of almost 54,000 diamonds."),
                                          h3("Format"),
                                          h5("A data frame with 53940 rows and 10 variables:"),
                                          h4("price"),
                                          h6("price in US dollars"),
                                          h4("carat"),
                                          h6("weight of the diamond (0.2-5.01)"),
                                          h4("cut"),
                                          h6("quality of the cut (Fair, Good, Very Good, Premium, Ideal)"),
                                          h4("color"),
                                          h6("diamond colour, from D (best) to J (worst)"),
                                          h4("clarity"),
                                          h6("a measurement of how clear the diamond is (I1 (worst), SI2, SI1, VS2, VS1, VVS2, VVS1, IF (best))"),
                                          h4("x"),
                                          h6("length in mm (0-10.74)"),
                                          h4("y"),
                                          h6("width in mm (0-58.9)"),
                                          h4("z"),
                                          h6("depth in mm (0-31.8)"),
                                          h4("depth"),
                                          h6("total depth percentage = z / mean(x, y) = 2 * z / (x + y) (43-79)"),
                                          h4("table"),
                                          h6("width of top of diamond relative to widest point (43-95)"),
                                          
                                      ) # mainPanel
                             ),
                             tabPanel("GitHub Repository",
                                      mainPanel(
                                          h2("Please visit my GitHub repository to view the source code."),
                                          h4("https://github.com/Littymol/Shiny-Application-and-Reproducible-Pitch.git"),
                                          tags$a(href="https://github.com/Littymol/Shiny-Application-and-Reproducible-Pitch.git", "Click here!")
                                      )
                                      
                             ) # tabpanel
                  ) #navbarpage
) # fluidPage 
) # shinyUI





