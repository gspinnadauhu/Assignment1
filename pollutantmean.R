#Part 1 pollutantmean function
pollutantmean<-function(directory,pollutant,id=1:332){
        if (basename(getwd())!=directory){
                setwd(file.path(getwd(),directory))      
        }
        else{}
        if (id<10){
                data<-read.csv(paste0("0","0",as.character(id),".csv"))
        }
        else if (id>=10&id<100){
                data<-read.csv(paste0("0",as.character(id),".csv"))
        }
        else {
                data<-read.csv(paste0(as.character(id),".csv"))
        }

        
}
