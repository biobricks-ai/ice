library(rvest)
library(purrr)
library(fs)
library(RSelenium)
library(tidyverse)
library(netstat)
library(stringr)

# Will use firefox to load file URLs.
get_page_source_firefox <- function(URL) {
	rD=rsDriver(browser="firefox", port=free_port(), verbose=F, 
		extraCapabilities=list(acceptInsecureCerts=TRUE,acceptUntrustedCerts=TRUE)) # Open firefox
	remDr <- rD[["client"]]
	remDr$navigate(URL) # go to URL
	Sys.sleep(30) # give sufficient time for app to load
	 page_source <- remDr$getPageSource() # get page source after loading app
	remDr$close() # close session
	as.character(page_source) # return page source
}

options(timeout=1800) # download timeout
address = "https://ice.ntp.niehs.nih.gov/DATASETDESCRIPTION" 

fs::dir_create("download/") # Create directory for downloads
files = get_page_source_firefox(address) |> 
	str_extract_all(pattern="href=.*xlsx") |>
	unlist() |> sub(pattern="href=.*/", replacement = "")
URLs = paste0("https://ice.ntp.niehs.nih.gov/downloads/DataonICE/", 
	files)
walk2(URLs, paste0("download/", files), download.file) # Download files 
