% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tcm.R
\name{get_tcm}
\alias{get_tcm}
\title{Extract term-co-occurence matrix}
\usage{
get_tcm(corpus)
}
\arguments{
\item{corpus}{\code{HashCorpus} or \code{VocabCorpus} object. See
\link{create_corpus}, \link{vectorizers} for details.}
}
\description{
This function creates a term-co-occurence matrix from a
  \code{Corpus} object.
}
\examples{
\dontrun{
txt <- movie_review[['review']][1:1000]
it <- itoken(txt, tolower, word_tokenizer)
vocab <- create_vocabulary(it)
#remove very common and uncommon words
pruned_vocab = prune_vocabulary(vocab, term_count_min = 10, doc_proportion_max = 0.8,
                                doc_proportion_min = 0.001, max_number_of_terms = 5000)

vectorizer <- vocab_vectorizer(pruned_vocab, grow_dtm = FALSE, skip_grams_window = 5L)
it <- itoken(txt, tolower, word_tokenizer)
corpus <- create_corpus(it, vectorizer)
tcm <- get_tcm(corpus)
dim(tcm)
}
}
\seealso{
\link{create_corpus}
}

