library(purrr)
library(vroom)
library(arrow)
library(stringr)
library(readxl)

outdir <- fs::dir_create("data")

save_parquet <- function(file) {
  path <- fs::path_ext_remove(file) |> 
  		fs::path_ext_set("parquet") |> fs::path_file()
  df <- read_excel(file, sheet = 1)
  arrow::write_parquet(df,fs::path(outdir,path))
}

# WRITE OUTS ================================================================================
fs::dir_ls(outdir) |> fs::file_delete() # delete files present in the directory
fs::dir_ls("download/") |> walk(save_parquet) 
