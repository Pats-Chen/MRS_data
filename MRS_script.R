#import dataset



#take out seat type
library("stringr")
data_201804_clean$seat_type=str_sub(data_201804_clean$seat_number, start = 1L, end = 1L)


#substitute seat type to 1 and 0
data_201804_clean$seat_type=gsub("S", "1", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("A", "0", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("B", "0", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("C", "0", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("D", "0", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("E", "0", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("F", "0", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("G", "0", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("H", "0", data_201804_clean$seat_type)
data_201804_clean$seat_type=gsub("W", "0", data_201804_clean$seat_type)


#count jlpt by seat_type
library(dplyr)
count(data_201804_clean,jlpt,seat_type)
