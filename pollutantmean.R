#Part 1 pollutantmean function
pollutantmean<-function(directory,pollutant,id=1:332){
        directory<-function(...) {
                args<-list(...)
                x<-args[["directory"]]
                paste0("C:/Users/mlang2/Dropbox/Coursera/R Programming/Assignment1/",x)
        }
#Above here is tested and correct                
                
        if(x=="sulfate"|"nitrate"){
                pollutant<-x
        }
        if(is.numeric(y) && y<333){
                id<-y
        }
        read.csv(directory)
        mean(pollutant[!is.na(pollutant)])
}