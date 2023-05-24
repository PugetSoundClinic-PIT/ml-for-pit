# Pre-trained Models

## Generalizability

* in the prior chapter we talked about how for some tasks we need to train our own model because we want to define the annotation criteria or we are in a very niche sub-domain.

* however, using pre-trained models that are general to a task can also be quite useful -- especially considering that they were likely trained with more data than the dataset you are working with

* these more general tasks might include sentiment classification, text summarization, question answering, etc.

## Transformers and HuggingFace

* We have introduced and used transformers, a model architecture

* huggingface is a company which builds tools around various model architectures to make them easily shareable

* for example, here is a list of all of the models they have available for download.
* every single model is available for download and use and in many cases has some documentation attached to understand how to use the model in your own work

## Sentiment

* Because so many people work on sentiment classification due to its broad usage in both industry and research, there are some available models for sentiment classification on huggingface

* for example, here is one trained for three label sentiment (positive, neutral, and negative) classification: https://huggingface.co/cardiffnlp/twitter-roberta-base-sentiment

* we can try using this model on a few examples to see how it performs

* do so

## Limitations and Warnings

* The model we used for sentiment was trained using twitter data -- twitter posts are obviously different than meeting discussion

* this can affect the model and we should always evaluate the performance of even off the shelf models

* in general, when using a model, be sure to read how it was trained, what data it used for training, and understand the possible biases and problems that come from using a model trained by someone else

* try to find a model that was trained on data close to yours for the best results

## Summarization

* a lot of companies and people care about summarization
* especially summarizing meeting notes
* someone has already taken the time to train a model for meeting dialoge summarization: https://huggingface.co/knkarthick/MEETING_SUMMARY

* try using the model

* note, that there is a limit to how much text you can push into a transformer encoder

* there are work around approaches though -- instead of summarizing all of the text, summarize in chunks and then summarize the summaries -- this is called recursive task decomposition

* try doing that

## Spacy and NLP

* Spacy is a different library but one which also provides easy access to a whole suite of tools within a single model
* Spacy targets "traditional" natural language processing tasks like part of speech tagging, named entity recognition, etc.

* show example of NER with a public comment

## Exercise

* Using the example dataset, first classify each examples as positive, negative, or neutral -- then use spacy's named entity recognition capabilities to identify common entities for each.