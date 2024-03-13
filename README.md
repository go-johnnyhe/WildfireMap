# 2022 US West Coast Wildfires

## Project description

Recently it seems that for every summer there is a record for wildfires. Statistics
along the line of the sole number of fires, total number of deaths, or total acreage
destroyed. It has become increasingly clear that wildfires are an extremely pressing
issue in modern times. These wildfires have a tremendous impact on the lives of people
who live near where they occur. This could be a direct threat of the fire taking away the
lives and homes of people, but is also an issue to people far away through air pollution
from smoke. The particles that find themselves in the air from these wildfires are a huge
health risk to people who inhale them. They can cause heart attacks, strokes, and can
even lead to the death of vulnerable individuals.

**In this project we are visualizing the wildfires that have occurred on the west
coast of the United States**. As residents of the state of Washington, we have
experienced the effects of these wildfires more and more each year. Especially during
the summer months, smokey conditions have become a pressing issue to the
populations of this area. Oftentimes, the smoke that is in the air in the state of
Washington has originated from a fire from Oregon or California, which the wind
currents have carried the smoke up the coast to Washington. This is why we have
chosen to do our final project analysis on the entire west coast of the United States,
rather than just Washington itself.

## Project goal

The goal of our project is to convey information to our viewers about where
wildfires are occurring within the three states on the west coast of the United States.
Along with the location we also are able to show our viewers which month of the year
that these fires occur. We hope that by spreading awareness of the amount of wildfires
that occur throughout the year along the west coast of the country will help mitigate the issue. During our research we found that a large percentage of the wildfires began due to human activity. We hope that people will be able to use this map to gain knowledge about the fire risk of any place on the west coast at any time of the year. Along with this, we hope to also send a message regarding the severity of wildfires. According to the local wildfire authorities of each state, over the past few years there have been over one million acres damaged by wildfires annually. Additionally, each year there has been over 100 deaths with a direct cause being wildfires. We want to deliver this message to the viewers of our map so that they are aware of how important this matter is.

## Application URL

https://go-johnnyhe.github.io/WildfireMap/index.html

## Screenshots
![Home page](/assets/screenshot1.png)
![Map](/assets/screenshot2.png)


## Main functions

The main feature of this project is a proportional symbol map that shows the location in
which each fire occurred. There are many additional features that supplement the proportional symbol map. The first of which we included is a time slider that allows the user to select
an individual month to display. Another feature is that each dot is color coded to display
the incident size of the wildfire. Since the range of the wildfires vary quite distinctly, we decided to focus on the daily acres from 0.1 all to 10,000+. We also included fires with daily acres of 0 in which we identify as the wildfires that have sizes unknown. We have also included a feature that allows the
user to filter the data between all 3 states or just one of Washington, Oregon, or
California. We have also included a title and cited our data source with a hyperlink.

## Data sources

The data that we are using for our map comes from The **Wildland Fire
Interagency Geospatial Services (WFIGS) Group**. The WFIGS Group used data from
the Integrated Reporting of Wildland-Fire Information (IRWIN) service, which is an
application that allows exchange from previously existing data applications to its uniform
data format. The IRWIN application was funded cooperatively by the United States
Department of the Interior and the United States Department of Agriculture. The dataset
from the WFIGS group contains every wildfire that has occurred in the United States in
the year 2022. We filtered this data further to only include the three states on the west
coast, Washington, Oregon, and California. We then converted the wildfire dataset into a geojson file with the [online converter](https://www.convertcsv.com/csv-to-geojson.htm).

## Applied libraries and Web Services in use

Our web map is hosted on Github, which we also used in order to work
collaboratively on this project. We used the mapbox gl js applied library to create our basemap,
choosing to modify the dark monochrome basemap into a wild fire theme with orange labels and yellow administrative boundaries.

## Acknowledgment

We would like to acknowledge the University of Washington, as this project was
made as the final project for the course Geography 495: Web GIS. We further would like
to thank our instructor Bo Zhao (zhaobo@uw.edu) and teaching assistant Steven Bao
(bxq98@uw.edu).



