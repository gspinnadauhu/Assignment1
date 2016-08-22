#Part 2 - create index of complete cases in airquality dataset
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