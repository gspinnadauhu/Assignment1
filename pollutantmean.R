#Part 1 pollutantmean function
pollutantmean<-function(directory,pollutant,id=1:332){
        total=0
        count=0
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
                if (pollutant=="nitrate"){
                        total<-total+sum(data$nitrate[!is.na(data$nitrate)])
                        count<-count+length(data$nitrate[!is.na(data$nitrate)])
                }
                else {
                        total<-total+sum(data$sulfate[!is.na(data$sulfate)])
                        count<-count+length(data$sulfate[!is.na(data$sulfate)])
                }
        }
        return(total/count)
}
#Part 2
complete<-function(directory,id=1:332){
        if (basename(getwd())!=directory){
                setwd(file.path(getwd(),directory))      
        }
        #idvect<-id
        nobs<-vector("numeric")
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
                compcase<-complete.cases(data)
                nobs<-append(nobs,length(compcase[compcase==TRUE]))
        }
        results<-data.frame(cbind(id,nobs))
        results
}