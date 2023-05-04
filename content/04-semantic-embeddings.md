# Semantic Embeddings

## Problems with ngrams and word counts

* If we think about what they represent and how we store their data, you have a count for every single unique ngram in the text. This is a lot of data to store, especially if the meeting is long and discusses many different topics which can increase the diversity of the ngrams thereby increase the number of total ngrams you need to store in your dataset.

* They don't generalize to different text datasets. We only counted ngrams for Seattle but if we wanted to compare discussion about a topic between two places using the same ngram we would have to KNOW that the two places use the same terminology in their discussion.

* HOWEVER, we shouldn't discount the fact that they are counts that are specific. Which can be useful.

## Semantic Neighborhoods

* Instead of counting words, the state-of-the-art is to create dense embeddings from text

* Originally this was done with single words
* "You shall know a word by the company it keeps!" Firth 1957
    * https://cmdowney88.github.io/teaching/uw_574/slides/3_WV_GD.pdf
* https://machinelearningmastery.com/what-are-word-embeddings/
* https://jalammar.github.io/illustrated-word2vec/
* https://www.youtube.com/watch?v=gQddtTdmG_8

* But now we do so with longer sequences of text
* https://www.deepset.ai/blog/the-beginners-guide-to-text-embeddings

TODO PICK ONE OR A FEW OF THESE FOR BACKGROUND EXPLANATION, maybe pull out some highlights for each just in case they skip over them

## Sentence Transformers

* The latest iteration of text embeddings commonly use a model architecture called the "Transformer" model.
    * If you want to read the original paper which introduced this model, you can do so here: https://arxiv.org/abs/1706.03762

* Specifically, the thing we care about right now is their "encoder" part. This is the part of the model architecture that takes an input and calculates an embedding.

* Transformers are useful for all sorts of things and we will use them again later on, but for now, lets focus on the produced embeddings.

* Because of the dominance of transformers, there are whole libraries available for quickly uploading, sharing, downloading, and using them. `SentenceTransformer` is a library which specifically focuses on making models available that perform well for creating these embeddings.

* SHOW SENTENCE TRANSFORMERS ON AN EXAMPLE TEXT

* Remember from the readings that semantic neighborhoods are all about how similar two pieces of information (in this case text) are to each other.

* To compare the prior text to a new text, we need to get the embedding for the new text and then compute a similarity metric.
* Most commonly when working with these large dimension vectors is using "Cosine similarity"
    * Find some readings for cosine similarity vs others

* SHOW EMBEDDING FOR NEW TEXT AND SIMILARITY BETWEEN TWO

* For comparison, if we were to embed another piece of text that we understand as quite different from the first two, we should see that the similarity between this new one and the original one.

* SHOW SIMILARITY BETWEEN OPPOSITE TEXT AND ORIGINAL TEXT EMBED

## Semantic Search

* One application of semantic embeddings is for search

* For example, if you had a dataset of text and you wanted to find the most similar piece of text to a user query, you can embed each item in the dataset and the query and calculate the most similar items to the query.

* SHOW EXAMPLE

## Neighborhoods and Topics

* Another application of semantic embeddings is in understanding the diversity of your dataset and what topics are covered

* You can think of this as how much range is represented in each dimension of the embeddings for all embeddings in the dataset

* Because most of the embedding models have 300+ dimensions, its hard to understand what each dimension means.

* If we were only trying to compare fruits and we only used 2 dimensions we might be able to plot something like this: https://xkcd.com/388/

* But with 300+ dimensions, we need to use an additional tool to reduce the dimensions down to something even further.

## UMAP

* UMAP is an algorithm specifically designed to reduce dimensions down to be able to plot and get some sort of understanding over your dataset's embeddings

* TODO find background reading on UMAP

* We can use UMAP on our example dataset to show the embeddings on a 2D plot

* SHOW EXAMPLE

## Exercise

* Using your knowledge of CDP datasets and processing the text, get the embeddings for each sentence in 10 different meetings and store them into a dataset with the text
* Use UMAP to reduce and plot the embeddings into 2D space
* What do you notice? Can you observe topics and trends?