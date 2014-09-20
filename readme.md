---
title: 'DDP Course Project: Diamonds Explorer'
author: "cryptoknight7"
date: "17 Sep 2014"
output: html_document
runtime: shiny
---

## Shiny Application Description

This Shiny application allows users to explore and plot the R "diamonds" data set by exploring various sample sizes, carats, types of cut, etc., and plotting the results in a multi-dimensional graph.

* *This app was built on the foundation of the guide detailed at "https://github.com/rstudio/shinyapps/blob/master/guide/guide.md".*

---  

## App Usage

* This application allows the users to use a slider control to **choose the diamond sample size** (from 1,000 to 53,940) used for plotting.

* Also, users may **plot any data feature against any other feature** on the X and Y axes using the "X" and "Y" drop-down boxes.  By default, the plot shows carats plotted against diamond cuts.

* In addition, users can **choose to add color to the graph** via the "Color" drop-down box, e.g., by choosing the "price" feature.

* Users can choose whether to **apply "geom_jitter" or "geom_smooth" functions** to the diamond data by clicking the associated checkboxes.

* Finally, the data may be further **split into facet rows or columns** based on any feature of the diamonds by selecting the feature from the "Facet Row" or "Facet Column" drop-down boxes.

--- 

## Summary

This Shiny App enables users to learn more about diamonds in a fun, interactive way, and empower them to answer the hard diamond questions like "*do higher carats translate to higher prices?*" and "*will I pay more for premium cut diamonds?*" (SPOILER ALERT: Yes and Yes).

--- 
