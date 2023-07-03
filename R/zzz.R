.onLoad <- function(libname, pkgname){
  packageStartupMessage("Type 'data(stjude)' to load the data set.")
  packageStartupMessage("Then type 'summary(stjude)' for an overview of the data structure.")
  packageStartupMessage("See package 'macat' for examplary analyses.")
}


.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.19")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}

