# Explanation here: https://www.r-bloggers.com/web-scraping-javascript-rendered-sites/

library(rvest)
source("scrapeJs.R")

site = "http://www.scoreboard.com/mlb/standings/" 
output = "website.html"

scrapeJs(siteName = site, outputName = output)

website = read_html(output) %>% 
  html_table()

website