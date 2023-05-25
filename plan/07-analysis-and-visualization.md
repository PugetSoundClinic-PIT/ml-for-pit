# Analysis and Visualization

## Tieing everything together

* with each chapter we have learned and applied a new method to legislative meeting transcript data

* in this chapter we build off each piece by tieing multiple methods together to gain a larger understanding of conversations in municipal council

## Start Out With A Question

* There are a lot of questions we can ask about this data

* lets start with something simple -- how does discussion about housing and homelessness across the country take place? are conversations more positive? negative? etc.

* and there are plenty of additional questions after this
* does that hold across all points of time
* etc.

## Planning

* Break this down more

* we will want to identify meetings in which housing and homelessness came up -- we can use a text classifier for this
* positive and negative means sentiment, so we can use an off the shelf model

* lets start by looking at a single city council, with a single year of data

* start with seattle for 2021-2022

## Seattle 2021 - 2022

* use bulk to annotate "housing and homelessness" chunks

* train a model

* predict meetings that are about housing and homelessness

* predict sentiment for those meetings

* pause -- do the results look okay?

* plot results (bar plot?)

* what about time? plot sentiment as ordinal and chunks as time

## Scaling Up

* add more data to the annotations

* retrain model

* predict on holdout set (different city)

* predict sentiment

* plot results again

* observations?

## Combining with other data

* City council meetings are a specific event within a larger city environment and we should always look to include other points of data to gain larger understandings

* Here is a dataset of the cities we are looking at which contains, their racial makeup and their GDP, lets look for correlations between sentiment of discussions and both factors

* ...