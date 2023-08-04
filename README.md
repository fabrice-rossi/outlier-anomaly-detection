# Meta-survey on outlier and anomaly detection

This repository contains supplementary materials for the paper
[Meta-survey on outlier and anomaly detection](https://www.sciencedirect.com/science/article/abs/pii/S0925231223007579). 
This paper provides a survey of surveys about outlier and anomaly
detection. It uses the principles of systematic reviews in which a
large collection of potentially relevant papers is gathered using
specialised search engines. The collection is then restricted to
relevant papers and further to high quality papers. 

## Results of the initial queries
The initial queries where made on 
[Google Scholar](https://scholar.google.com) (GS) and 
[Semantic Scholar](https://www.semanticscholar.org/) (S2). 

The results obtained on GS are given in this [CSV file](gsq/gs_papers_curated.csv). 
Each row is a paper. The columns of the file are used as follows:

- `id` is the GS id (see below);
- `title` is the title of the paper as reported by GS;
- `query` is the pair of words used to query GS for this paper;
- `s2_id` is the S2 id of the paper (see below);
- `duplicated` contains a reference S2 id if the paper appear several
  times in the GS results.
  
Results obtained on S2 are given in this [CSV file](s2q/s2_papers_curated.csv). 
It follows the same principles as the GS file ones but reports only S2
ids. In particular, the `id` column contains the S2 id of the paper.

The S2 id of a paper can be used with [S2 API](https://www.semanticscholar.org/product/api),
for instance like this
[https://api.semanticscholar.org/graph/v1/paper/30b99ae0682d42a2010be401dd1d8f7baca9bb5f?fields=title](https://api.semanticscholar.org/graph/v1/paper/30b99ae0682d42a2010be401dd1d8f7baca9bb5f?fields=title). The
S2 id is used directly after `/paper/` in the URL and followed by
query parameters (we asked here for the title of the paper). 

The GS is not publicly documented but at the time of writing the
meta-survey (early 2023), it can be used as follows
[https://scholar.google.com/scholar?cluster=535744563039386055](https://scholar.google.com/scholar?cluster=535744563039386055). The
GS id is used as the value of the `cluster` query parameter. The
resulting web page lists all the variants of the paper known by GS. 

## Survey results
The final result of the paper analysis is available in this 
[CSV file](survey_results.csv). Each row is a paper and the columns
are used as follows:

- `index`: our paper id (no particular meaning);
- `class`: the class of the paper as described in the survey:
    - 1: excluded for technical reasons (non English paper, etc.);
	- 2: excluded based on main subject of the paper (not about
      outlier detection);
	- 3: excluded based on the nature of the document (monographs,
      text book, etc.);
	- 4: excluded based on the scientific focus of the paper (applies
      to papers that are not survey papers);
	- 5: survey papers about specific aspects of outlier detection
      (for instance a survey about deep learning approaches to outlier
      detection);
	- 6: general survey papers about outlier detection.
- `title`: the title reported by GS or S2;
- `type`: used to differentiate peer reviewed research papers from
  monographs, text books, etc. The special type *plagiarism* is used
  to indicate that we consider that this paper has been written using
  significant portions of a paper published before;
- `language`: self explanatory;
- `set`: query source of the paper (GS: only from GS, S2: only from
  S2, Common: found in both search query results);
- `*_id`: ids of the paper (alternate ids are provided when the paper
  is duplicated)
- `original_article`: the S2 id of the paper we identified as the
  paper that was probably plagiarised to produce the current paper. 

