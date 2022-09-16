library(googledrive)

options(
  gargle_oauth_cache = ".secrets",
  gargle_oauth_email = TRUE
)

drive_ls("Concours/Finger") |> 
  purrr::pwalk(~drive_download(..2, path = paste0("data/", ..1), overwrite = T))

fs::dir_create("data/champ")

drive_ls("Concours/FingerChamp") |> 
  purrr::pwalk(~drive_download(..2, path = paste0("data/champ/", ..1), overwrite = T))