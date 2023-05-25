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

* extensions: what might be more interesting is comparing the sentiment that public commenters take vs the sentiment that council members and staff take

## Combining with other data

* City council meetings are a specific event within a larger city environment and we should always look to include other points of data to gain a better understanding

* Here is a dataset of the cities we are looking at which contains, their demographics and their GDP, lets look for correlations between sentiment of discussions and both factors

* instead of focusing on a single topic, another question we might want to ask is how demographic makeup of a city and it's GDP may affect the discussion in council -- i.e. do wealthier, whiter cities spend time on different topics than poorer, more diverse cities

* annotate and train more general topic model

* compute time spent on topics (breakdown by month?)

* plot and analyze demographics, GDP, and discussion time

* extensions: a lot of research utilizes voting records and public comments, combing meeting data with other data sources is incredibly valuable -- think about it as "what external contextual details can we add to our analysis" as a single meeting that is typically administrative may not contain all neccessary details.

## Exercise

* train a model to classify text as "public comment" or not public comment

* train a model to classify a few topics

* use both models, and an additional sentiment classification model to research how public comment sentiment differs from other discussion comments by topic

* what general observations do you have?

* is there an additional piece of data that would be interesting to use?

* free time to do it!