library(knitr)
library(markdown)
library(rmarkdown)

df<-as.data.frame(cbind("alpha"=letters, "numbers"=rnorm(26, mean=5, sd=1)))

for (ltr in unique(df$alpha)){
print(df[df$alpha==ltr,])
  rmarkdown::render('E:/Matt Gaming/Documents/Multiple PDF Test/rmarkdown_script.Rmd', 
                    output_format = "pdf_document",
                    output_file =  paste("report_", ltr, '_', Sys.Date(), ".pdf", sep=''), 
                    output_dir = 'E:/Matt Gaming/Documents/Multiple PDF Test')
}

#test
