ODS=survey_results.ods s2q/s2_papers_curated.ods gsq/gs_papers_curated.ods
CSV:=$(patsubst %.ods,%.csv,$(ODS))
RMD= systematic_survey_report.Rmd
HTML:=$(patsubst %.Rmd,%.html,$(RMD))

all: $(CSV) $(HTML) 

%.csv: %.ods
	libreoffice --headless --headless --convert-to csv:"Text - txt - csv (StarCalc):44,34,76,1,,0" $< --outdir $(@D)

%.html: %.Rmd 
	Rscript -e 'rmarkdown::render("$<")'

systematic_survey_report.html: $(CSV)
