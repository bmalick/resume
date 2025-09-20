# Variables
SRC_DIR := src
BUILD_DIR := compilations
PDF_DIR := pdfs

RESUME_NAME := resume
RESUME_SRC_DIR := $(SRC_DIR)/resume/versions
RESUME_SRC :=$(wildcard $(RESUME_SRC_DIR)/*.tex)
RESUME_OUT := $(BUILD_DIR)/$(RESUME_NAME)

COVER_NAME := cover
COVER_SRC_DIR := $(SRC_DIR)/cover/versions
COVER_SRC :=$(wildcard $(COVER_SRC_DIR)/*.tex)
COVER_OUT := $(BUILD_DIR)/$(COVER_NAME)

docs:
	@echo "Usage:"
	@echo "  make resume  Compile all the PDF versions of resumes"
	@echo "  make cover  Compile all the PDF versions of covers"

# Compilation rules

resume:
	@mkdir -p $(RESUME_OUT) $(PDF_DIR)
	@for file in $(RESUME_SRC); do \
		name=$$(basename $$file .tex); \
		echo "Compiling $$name..."; \
		latexmk -pdf -jobname=$$name -outdir=$(RESUME_OUT) $$file; \
		cp $(RESUME_OUT)/$$name.pdf $(PDF_DIR); \
	done

cover:
	@mkdir -p $(COVER_OUT) $(PDF_DIR)
	@for file in $(COVER_SRC); do \
		name=$$(basename $$file .tex); \
		echo "Compiling $$name..."; \
		latexmk -pdf -jobname=$$name -outdir=$(COVER_OUT) $$file; \
		cp $(COVER_OUT)/$$name.pdf $(PDF_DIR); \
	done


# Cleanup
clean:
	@rm -rf $(PDF_DIR) $(BUILD_DIR)




