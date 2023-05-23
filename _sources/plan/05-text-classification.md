# Text Classification

* one of the most common tasks in working with text is in classifying texts
* this can include things like classifying the topic of the text, the sentiment (is the text positive or negative), is the text toxic, etc.

* the general idea is simply that it's useful to categorize text. Instead of having a big blob of text, here is it's classification for which scientists, users, etc can filter, subset, search, and utilize.

## Models

* Starting with a simple example of a binary sentiment classification model

* there are two possible outputs, positive or negative -- we can encode these as 1 and 0

* one of the earliest methods (and still works pretty well) was using a bag of words model for classification
    * bag of words = counts of words

* so if we know the outputs and we have counts of words, we can turn this into a linear model like so:
* y = bx_1 + bx_2 + b_x3 ... + bx_n

* where we can fill in the counts of the words into the x values and the models task is to learn the beta values -- the coeffecients

* for a quick intro, watch these two videos: https://www.youtube.com/watch?v=7ArmBVF2dCs and https://www.youtube.com/watch?v=yIYKR4sgzI8
* For even more details, see: Dr. Mine Çetinkaya-Rundel's "Simple Linear Regression" Lecture: https://sta210-s22.github.io/website/slides/lec-2.html as an intro and then "Logistic Regression" lecture: https://sta210-s22.github.io/website/slides/lec-18.html#/topics

* remember, the x values here are just the word counts. know what we do about dense semantic embeddings, we can also easily swap the counts out for the embedding dimension values.

* show example

## An Example

* let's make a very simple classifier on some dummy data
* lets classify if each public comment is for or against a bill
* THIS IS ALL FAKE DATA

* train classifier using SK logit with counts

* train classifier using SK logit with embeddings


## Stop and Understand what is happening

* the model is using either the counts or the embeddings to fill in values to some stored equation, then calculating the result and that result is a classified value.

## Reminders on ngrams vs semantic embeddings

* They don't generalize to different text datasets. We only counted ngrams for Seattle but if we wanted to compare discussion about a topic between two places using the same ngram we would have to KNOW that the two places use the same terminology in their discussion.

* expanded, if we only trained a model using data from Seattle, are we sure that model will work well for a different city council?

## Logit models work well even with very few examples

* even as little as a few hundred examples may be okay for certain tasks

* but, there are other models we can use to potentially get better results -- however they typically require much more data and many more examples

## More than binary

* binary classification is useful (and simpliest) in many situations but in many cases you may want more than a binary answer

* another simple example is to extend our prior work from "positive or negative" to a scale from negative to positive. i.e. "very negative, slightly negative, neutral, slightly positive, very positive" -- five possible labels to classify

* this can be done with a "multinomial logistic regression model" -- while scikit learn handles all of this for us -- if you are interested in understanding the statistics behind this generalization, see Dr. Çetinkaya-Rundel's lecture: https://sta210-s22.github.io/website/slides/lec-23.html#/title-slide

## Multinomial logit models

* same process as before -- train with counts, train with embeddings
* use the fake data

## Potential Problem Areas

* you need to be careful about class imbalance -- i.e. when your data has many many more examples of one label than others
* choosing how to label and creating a definition / criteria for labeling consistently
    * your model is only as good as the labels you give it

## State of the Art Methods

* Remember the transformer? Transformers are made up of two parts, the encoder and decoder. We used the encoder to get semantic embeddings but we can additionally fine tune a decoder as well.
* .....
* TODO

## Annotation

* the elephant in the room
* A LOT of machine learning is annotation
* there are fancy methods being developed to try and reduce the amount of annotation needed for certain tasks (if any annotation at all) but for reproducibility and understanding, supervised learning continues to be incredibly useful

## Topic classification

* topic classification or maybe subject classification is the same as other text classifications -- you have a set of outputs and the bag of words, semantic embeddings, or some other representation of the text as input.

* in our case, lets make a model to classify general topic: "housing", "transportation", "police", "parks and rec", "utilities", etc.

* CDP provides us a lot of data but manually going through all of that data individual is incredibly time consuming. to get an annotated set up and running quickly, tools have been developed to sit on top of visualizations to label the points.

* show demo of BULK for a few hundred random examples of text

## Decisions in annotation

* In the prior example, I set the text size to a certain amount, and we decided the labels but those things can change. if each example should have more or less text, if we should have more or less labelling options, etc.

* all of these decisions may affect the model

## Training a model using the annotations

* lets use semantic embeddings with an sklearn logit model

* its important to be able to evaluate your model
* train, eval, and holdout test sets

* train the model

* eval with holdout

* explain scores (precision, recall, f1)

* can also use a confusion matrix to understand misclassification

## Exercise

* Download data for multiple cities
* Construct a text dataset for topic classification
    * choose how large each example should be
    * the labels are: TODO
* Use UMAP and BULK to annotate
* construct train, eval, and holdout test
* train and eval
* write down some observations

