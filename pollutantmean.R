#Part 1 pollutantmean function
pollutantmean<-function(directory,pollutant,id=1:332){
        directory<-function(...) {
                args<-list(...)
                x<-args[["directory"]]
                paste0("C:/Users/mlang2/Dropbox/Coursera/R Programming/Assignment1/",x)
        }
#Above here is tested and correct                


        read.csv(paste0(directory,as.numeric(id),".csv"))
        mean(pollutant[!is.na(pollutant)])
}