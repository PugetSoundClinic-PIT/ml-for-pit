# Counting Words

## Word Counts??

* "if the words 'housing', 'rent', and 'affordability'" are all spoken frequently in a meeting, we can broadly say that "housing affordability" was an important topic in the meeting
* "frequently" just means counting!
* maybe also look into / find good article on distant reading
* words counts are still today used for input to machine learning: "i.e. if the sentence has 10 X, 4 y, 1, 1, 1, then it is about ...."

## Ngrams

* words are helpful but we can generalize to be more flexible in counting by using "ngrams"
* define ngrams
* one word ngrams are called unigrams, two word: bigrams, three word: trigrams, etc.
* using the same example: "if the two-word ngram (bigram) of 'housing affordability' is frequently spoken in a meeting, we have even more confidence that that was an important discussion topic"

## Lets count

* scikit learn has a "CountVectorizer"
* show example of basic count vectorizer for an example sentence

* because there were N unique words in the sentence and because there was only a single sentence, this vector is of shape: `(n, 1)`

* each unigram is counted and the final counts are stored in a vector

* explain the vector as a list

* `CountVectorizer` is neat because it allows us to provide the ngram range we want to count as a unique entity
* show the same example of a basic count vectorizer for an example with more ngrams
* remember this makes our vector larger... show shape

## Using `CountVectorizer` on transcript data

* Remember: each sentence will be a single vector
* Stacking them all up, we get a matrix of (unique grams, number of sentences)

## Finding common words

* with some matrix calculation we can get a list of the most common words (avg across all meetings)
* this shows a problem though, the most common words are filler words

* we can filter these "filler words" (or known as stopwords) out using the same CountVectorizer

* do so, then recalc common words

## How do these counts tell us anything

* we can look at the counts of a meeting in a single day
* do so

* we can also look at trends in counts over time
* do so