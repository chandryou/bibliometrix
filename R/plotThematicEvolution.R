#' Plot a Thematic Evolution Analysis
#'
#' It plot a Thematic Evolution Analysis performed using the \code{\link{thematicEvolution}} function.
#' 
#' @param Nodes is a list of nodes obtained by \code{\link{thematicEvolution}} function.
#' @param Edges is a list of edges obtained by \code{\link{thematicEvolution}} function.
#' @return a sankeyPlot
#' 
#'
#' @examples
#' 
#' data(scientometrics)
#' years=c(2000)
#' 
#' nexus <- thematicEvolution(scientometrics,years,n=100,minFreq=2)
#' 
#' #plotThematicEvolution(nexus$Nodes,nexus$Edges)
#' 
#' @seealso \code{\link{thematicMap}} function to create a thematic map based on co-word network analysis and clustering.
#' @seealso \code{\link{thematicMap}} function to perform a thematic evolution analysis.
#' @seealso \code{\link{networkPlot}} to plot a bibliographic network.
#'
#' @export

plotThematicEvolution<-function(Nodes,Edges){
  
  networkD3::sankeyNetwork(Links = Edges, Nodes = Nodes, Source = "from", Target = "to", 
                           NodeID = "name", Value = "weight", width = 900, fontSize = 12,
                           nodeWidth = 30,  NodeGroup = "group",LinkGroup = "group")
                           #colourScale = networkD3::JS('function(){d3.select("body").style("background-color", "#DAE3F9"); return 50;}'))
}


