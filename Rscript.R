library(data.table)

delay_Fun <- function(arr_time)
{  
  if (arr_time > 0 )
    {status <-"Delayed"}
  else {status <-"On-Time"}

  return(status)
}



data<-fread("data.txt" , sep="\t", nrows=10)



header<-read.table("data.txt" , sep="\t", nrows=1, header=T)
data$V1 <- NULL
setnames(data, colnames(header))

print("Hi")
Input <- readline(prompt = "Did you have a good summer?(yes/no) ")




Input <- readline(prompt = "Did you have a good summer?(yes/no) ")






data$status <- sapply(data$V11,delay_Fun)
