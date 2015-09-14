#This calculates the mean of 10 random standard normal variables
mean(rnorm(10))
?(mean)
help("mean", htmlhelp = FALSE)
options(htmlhelp=FALSE)
help(mean)
# Type help() or ?() for help and descriptions on specific functions
# Or if you don't know the exact name of the function you need help with
help.search("mean")
apropos("mean")
# To retrieve functions in packages not yet downloaded
RSiteSearch("violin")
RSiteSearch("violin", restrict = c("functions"))
help(RSiteSearch) # Retrieves help on the site search function
