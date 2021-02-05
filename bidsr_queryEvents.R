bidsr_queryEvents <- function(bidsRoot, taskName) 
  
{
  
  allEventsFiles <- list.files(bidsRoot, 
                               pattern = "events.tsv",
                               recursive = TRUE)
  
  taskEventsFiles <- allEventsFiles %>% 
    str_subset(pattern = taskName)
  
  cat('I have found the following events files for task', taskName, ':\n\n')
  print(taskEventsFiles)
  
  return(taskEventsFiles)
  
}