#Part3 - calculate correllations between sulfate and nitrate in completed cases
corr<-function(directory,threshold=0){
        if (basename(getwd())!=directory){
                setwd(file.path(getwd(),directory))      
        }
        correllations<-vector("numeric")
        results<-complete(directory,1:332)
        results<-subset(results,nobs>threshold,select=c(id,nobs))
        for (i in results$id){
                if (i<10){
                        data<-read.csv(paste0("0","0",as.character(i),".csv"))
                }
                else if (i>=10&i<100){
                        data<-read.csv(paste0("0",as.character(i),".csv"))
                }
                else {
                        data<-read.csv(paste0(as.character(i),".csv"))
                }
                data<-data[complete.cases(data),]
                correllations<-append(correllations,cor(data$nitrate,data$sulfate))
        }
        correllations
}