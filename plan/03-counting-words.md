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

* we can also look at trends in counts over time (scatter)
* do so

## What does this plot tell us

* the x axis represents the number of times the selected ngram was used
* the y axis represents the datetime of the meeting

* combined we can interpret this as counts of an ngram over time

* but it has problems:
    * we are looking at the ngram for "housing" but what if people said "house" or "houses"? should be counted differently
    * each meeting is a different length, if a meeting is longer then it might naturally include more words than other meetings.

## Counting word stems

* all words have roots or stems
    * provide a few examples
* scientists and software developers have worked on "stemmers" for us
* show the same examples with a stemmer
* if you want to find out how these stemmers work, you should read the snowball stemming paper!

* lets rerun our dataset generation and plotting code with word stemming

* `CountVectorizer` is customizable and we can add a stemmer preprocessor

* rerun

* Now when we plot these results, we still have the total word count issue but when select an ngram, we are selecting all versions of the stem (i.e. "hous" gives us "housing, houses, house" all at once)

## Normalizing counts

* lets work on a solution for the counts in context problem.
* what if instead of the count of words, we take the count and convert it to a percentage

* so instead of saying: "the ngram 'hous' was used 100 times in this meeting, it represented 1% of all ngrams spoken"
* i.e. if "housing" or "house" or "houses" represents 1% of all words spoken in the meeting, another way to phrase that is that roughly 1 out of every 100 words was the unstemmed version of "hous"

* show normalization on an example

* we leave it to you to normalize counts for counts from the transcripts in the exercise

## Exercise

* Try calculating word counts for a different city council
* Normalize the words counts across the different meetings
* Plot two different words
* Write down some trends and patterns, are there obvious spikes?
* Do the same thing but for a larger ngram range