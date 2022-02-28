# Script for two-way workflow between R Markdown and Word
# Heliana
# 2022.02.21

require(rmarkdown)
require(devtools)

#import revised .docx file
revisedfile = here::here("NutTarget_template","NutTarget_revised.docx")

#convert .docx to .rmd
pandoc_convert(revisedfile,to="markdown",output = "NutTarget_revised-2.rmd", 
               options=c("--extract-media=."))

#note to self: before rendering html check newly generated rmd file for edits needed!
#render html
render(here::here("NutTarget_template","NutTarget_revised.rmd"),"html_document")




# adapted from code below: 
# examplefile=paste0(tempdir(),"/example.docx")
# examplefile = "/Users/helianateixeira/Desktop/NUt_Targets_revised/NutTarget_revised_draft_HT.docx"
# download.file("https://file-examples.com/wp-content/uploads/2017/02/file-sample_100kB.docx",destfile=examplefile)
# pandoc_convert(examplefile,to="markdown",output = "example.rmd", options=c("--extract-media=."))
# render(paste0(tempdir(), "/example.rmd"),"html_document")
# browseURL(paste0(tempdir(),"/example.html"))

#test code - working:
# revisedfile = "/Users/helianateixeira/Desktop/NUt_Targets_revised/NutTarget_revised_draft_HT.docx"
# pandoc_convert(revisedfile,to="markdown",output = "NutTarget_revised_draft.rmd", options=c("--extract-media=."))
# render("/Users/helianateixeira/Desktop/NUt_Targets_revised/NutTarget_revised_draft.rmd","html_document")
