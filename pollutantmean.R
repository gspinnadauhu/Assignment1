#Part 1 pollutantmean function
pollutantmean<-function(directory,pollutant,id=1:332){
        total = 0
        observations = 0
        if (basename(getwd())!=directory){
                setwd(file.path(getwd(),directory))      
        }
        else{}
        for (i in id){
                if (i<10){
                        data<-read.csv(paste0("0","0",as.character(i),".csv"))
                }
                else if (i>=10&i<100){
                        data<-read.csv(paste0("0",as.character(i),".csv"))
                }
                else {
                        data<-read.csv(paste0(as.character(i),".csv"))
                }
                data=na.omit(data)
                observations=observations+nrow(data)
                if (pollutant=="nitrate"){
                        total=total+sum(data$nitrate)
                }
                else {
                        total=total+sum(data$sulfate)
                }
        }
        return(total/observations)
}