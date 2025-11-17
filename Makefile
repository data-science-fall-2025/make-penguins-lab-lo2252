.PHONY: all
all: sims

.PHONY: sims
sims:output/penguin_report.html

rexec = R CMD BATCH --no-save --no-restore

output/penguin_class.csv: analysis/classify_penguin.R 
	R CMD BATCH --no-save --no-restore analysis/classify_penguin.R output/penguin_class.csv
	
output/penguin_class.csv: analysis/


# output/penguin_report.html: analysis/penguin_report.qmd output/penguin_report.html
#	quarto render ./analysis/penguin_report.qmd
#	mv .analysis/penguin_report.html ./output/penguin_report.html

	

