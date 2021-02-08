bidsr_loadEvents <- function(taskEventsFiles, taskName) 

{
  
# cat('I will load the files for task: \n', taskName)
# print(taskEventsFiles)


  for (i in 1:length(taskEventsFiles)) {
    assign(taskEventsFiles[i], 
           read.table(paste(bidsRoot,
                            taskEventsFiles[i], 
                            sep = '/'),
                      header = TRUE))
    
  }

# basename(taskEventsFiles[i])
# 
# 
# source_SCrotA <- lapply(taskEventsFiles, read.table, sep ='\t') %>% 
#   # rbindlist() 

}