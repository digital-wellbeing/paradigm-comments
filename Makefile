# Run `make` for these targets
all: renv render

# Restore R dependencies as specifed in renv.lock
renv:
	Rscript -e "renv::restore()"

# Render Quarto source documents
render: index.qmd
	quarto render $<

# Clean test outputs
clean:
	rm -rf  index_cache/ index_files/ ms.pdf

# These targets don't have dependencies (always run)
.PHONY: clean renv
