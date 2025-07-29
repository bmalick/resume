# Variables
SRC_DIR := src
BUILD_DIR := compilations
PDF_DIR := pdfs
# DEKSTOP ?= $(HOME)/Dektop


RESUME_NAME := resume
RESUME_SRC_DIR := $(SRC_DIR)/resume/versions
RESUME_SRC :=$(wildcard $(RESUME_SRC_DIR)/*.tex)
RESUME_OUT := $(BUILD_DIR)/$(RESUME_NAME)


docs:
	@echo "Usage:"
	@echo "  make resume  Compile all the PDF versions of resumes"

# Compilation rules

resume:
	@mkdir -p $(RESUME_OUT) $(PDF_DIR)
	@for file in $(RESUME_SRC); do \
		name=$$(basename $$file .tex); \
		echo "Compiling $$name..."; \
		pdflatex -jobname=$$name -output-directory=$(RESUME_OUT) $$file; \
		cp $(RESUME_OUT)/$$name.pdf $(PDF_DIR); \
	done

# Cleanup
clean:
	@rm -rf $(REPORT_OUT) $(MEETINGS_OUT)




