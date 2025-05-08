# Create map of North American Southwest Deserts
# Cameron Crowder
# ccrowder1@arizona.edu
# 2025 - 05 - 06

library(terra)

#load in the data
temp <- rast("../Desktop/Grad School/Classes/R Coding/Crowder_DW/scripts/Week14_Assignment_files/global-temperature.tif")

#plot the data and see ESPG or smth
temp
plot(temp)

#crop the data to southwest North America
#lower right: 21, -98
# upper left: 46, -126
#creating extent into data
southwest_ext <- ext(c(-126, -98, 21, 46))
southwest_ext
temp_sw <- crop(temp, southwest_ext)
temp_sw
plot(temp_sw)

#translate the raster cells to F
# F = (C * 9/5) + 32
temp_sw_f <- (temp_sw * 9/5) + 32
plot(temp_sw_f)

# re-project in conus albers
temp_sw_reproject <- project(temp_sw, "epsg:5070")
plot(temp_sw_reproject)

# change colors of map
plot(temp_sw, col = rainbow(n = 50))

plot(temp_sw, col = hcl.colors(n = 50, palette = "YlOrBr"))

#create palette for temperature
temp_cols <- rev(hcl.colors(n = 50, palette = "YlOrBr"))
plot(temp_sw, col = temp_cols)




