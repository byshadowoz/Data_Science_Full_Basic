#Importing Data
library(pacman)
# CSV
rio_csv <- import("data/mbb.csv")
rio_csv

# TXT

rio_txt <- import("data/mbb.txt")
rio_txt

r_txt1 <- import("data/mbb.txt", header = T)

r_txt2 <- import("data/mbb.txt", header = T, sep = "\t")


# XLSX

rio_xlsx <- import("data/mbb.xlsx")
rio_xlsx
