#' Move or Rename Files
#'
#' @name move_files
#' @title Move or Rename Files
#'
#' @param old_dir,new_dir File path ending in a slash
#' @param wildcard Character pattern with glob2rx syntax with which to select files
#'
#' @export


move_files <- function(old_dir, new_dir, wildcard = NULL) {
  files <- list.files(old_dir, pattern = glob2rx(wildcard),
                      full.names = FALSE)
  for (i in 1:length(files)) {
    file.rename(from = paste0(old_dir, files[i]),
                to = paste0(new_dir, files[i]))
  }
}
