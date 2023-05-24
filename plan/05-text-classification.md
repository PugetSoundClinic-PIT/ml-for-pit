# Text Classification

* one of the most common tasks in working with text is in classifying texts
* this can include things like classifying the topic of the text, the sentiment (is the text positive or negative), is the text toxic, etc.

* the general idea is simply that it's useful to categorize text. Instead of having a big blob of text, here is it's classification for which scientists, users, etc can filter, subset, search, and utilize.

* for our use case, there are a couple of text classification models that we might be interested in
    * sentiment classification models are pretty universally useful -- in our case, potentially using them when paired with public comments to see how many comments are positive or negative in tone
    * topic classification models specific to legislative topics -- i.e. general topic models might have too broad of a topic for our use cases, we might want to be able to classify discussion to finer grain discussion points
    * identifying portions of the meeting by type -- i.e. "this general section of text is public comment, this general section is discussion on a bill", "a presentation", "voting", etc.

* all of these can be formulated as text classification

## Models and Evaluation

* we will not be covering how these models work, but rather their application on our dataset

* for a quick intro on logit models, watch these two videos: https://www.youtube.com/watch?v=7ArmBVF2dCs and https://www.youtube.com/watch?v=yIYKR4sgzI8
* For even more details, see: Dr. Mine Çetinkaya-Rundel's "Simple Linear Regression" Lecture: https://sta210-s22.github.io/website/slides/lec-2.html as an intro and then "Logistic Regression" lecture: https://sta210-s22.github.io/website/slides/lec-18.html#/topics, then multinomial logistic regression: https://sta210-s22.github.io/website/slides/lec-23.html#/title-slide

* it is also important to test your models performance

## An Example Logit Model

* let's make a very simple classifier on some dummy data
* lets classify if each public comment is for or against a bill
* THIS IS ALL FAKE DATA

* train classifier using SK logit with embeddings

* evaluate

## An Example Transformer

* Remember the transformer? Transformers are made up of two parts, the encoder and decoder. We used the encoder to get semantic embeddings but we can additionally fine tune a decoder as well.
* Again, we will skip over much of the underlying method, if you want to better understand how these work, we recommend reading the original transformers paper and huggingface's documentation on fine-tuning a transformer: https://huggingface.co/docs/transformers/tasks/sequence_classification

* show fine-tuning a transformer using the same dataset

* we don't have a lot of data (it is all fake) so we sort of expect this to perform poorly. Transformers, need a lot of data to do well

## Annotation

* the elephant in the room
* A LOT of machine learning is annotation
* there are fancy methods being developed to try and reduce the amount of annotation needed for certain tasks (if any annotation at all) but for reproducibility and understanding, supervised learning continues to be incredibly useful

## Topic classification

* topic classification is the same as other text classifications -- you have a set of outputs and the bag of words, semantic embeddings, or some other representation of the text as input.

* in our case, lets make a model to classify general topic of discussion: "housing", "transportation", "police", "parks and rec", "utilities", etc.

* CDP provides us a lot of data but manually going through all of that data individual is incredibly time consuming. to get an annotated set up and running quickly, tools have been developed to sit on top of visualizations to label the points.

* show demo of BULK for a few hundred random examples of text

## Decisions in annotation

* In the prior example, I set the text size to a certain amount, and we decided the labels but those things can change. if each example should have more or less text, if we should have more or less labelling options, etc.

* all of these decisions may affect the model

## Training a model using the annotations

* use semantic embeddings with an sklearn logit model

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