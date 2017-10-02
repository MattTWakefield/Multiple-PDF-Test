library(knitr)
library(markdown)
library(rmarkdown)

source('E:/Matt Gaming/Documents/Multiple PDF Test/R_Functions.R')
df<-as.data.frame(cbind("alpha"=letters, "numbers"=rnorm(26, mean=5, sd=1)))
df$numbers
dfltr<-c("a","b","c")
for (ltr in dfltr){
print(df[df$alpha==ltr,])
  rmarkdown::render('E:/Matt Gaming/Documents/Multiple PDF Test/rmarkdown_script.Rmd', 
                    output_format = "pdf_document",
                    output_file =  paste("report_", ltr, '_', Sys.Date(), ".pdf", sep=''), 
                    output_dir = 'E:/Matt Gaming/Documents/Multiple PDF Test')
}

#test
