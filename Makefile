# Makefile Documentation
# -----------------------
# A Makefile is a build automation tool used to compile and manage dependencies in software projects.
# It defines a set of rules to generate target files from source files.
#
# Basic Structure:
# ----------------
# 1. Targets: The file or action to be created or executed.
# 2. Dependencies: Files or prerequisites required to build the target.
# 3. Commands: Shell commands executed to build the target.
#
# Syntax:
# -------
# target: dependencies
# <TAB> command
#
# Common Targets:
# ---------------
# - `all`: Default target to build the entire project.
# - `clean`: Removes generated files (e.g., object files, binaries).
# - `install`: Installs the built software.
# - `test`: Runs tests for the project.
#
# Variables:
# ----------
# Variables can be defined and used to simplify the Makefile.
# Example:
# CC = gcc
# CFLAGS = -Wall -g
#
# Pattern Rules:
# --------------
# Used for defining generic build rules.
# Example:
# %.o: %.c
# <TAB> $(CC) $(CFLAGS) -c $< -o $@
#
# Phony Targets:
# --------------
# Targets that do not represent actual files.
# Declared using `.PHONY` to avoid conflicts with file names.
# Example:
# .PHONY: clean
#
# Example Usage:
# --------------
# Run `make` to execute the default target.
# Run `make <target>` to execute a specific target.

#example
Target: dependencies
	@echo "use dependencies to build target, dependencies can be other targets, like this:"

dependencies: Target3
	@echo "use Target3 to build Target2, Target3 can be another target, like this:"

Target3:	
#some command(but tabs before that)
	@echo "gcc dummy use"
	gcc

#phony target example (unreal target)

clean:
	@echo "cleaning up"
	rm -f *.o *.exe
	@echo "done"

.PHONY: clean #some other phony target, .PHONY can take multiple targets
