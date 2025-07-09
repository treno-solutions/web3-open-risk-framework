#!/bin/bash

# Markdown Validation Script for Web3 Open Risk Framework
# Validates framework catalogue files (Risks, Indicators, Assessments)

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Counters
TOTAL_FILES=0
VALID_FILES=0
INVALID_FILES=0
WARNINGS=0

echo "🔍 Validating Web3 Open Risk Framework Catalogue..."
echo "=================================================="

# Function to check if file has required YAML front matter
check_yaml_front_matter() {
    local file="$1"
    local has_yaml=false
    # Check if file has YAML code block (```yaml ... ```)
    if grep -q '^```yaml$' "$file"; then
        has_yaml=true
    fi
    echo "$has_yaml"
}

# Function to check required YAML fields
check_required_fields() {
    local file="$1"
    local missing_fields=""
    # Check for required fields based on file type
    if [[ "$file" == *"/catalogue/risks/"* ]]; then
        required_fields=("id" "title" "category" "type" "scopes" "owners" "objectives")
    elif [[ "$file" == *"/catalogue/indicators/"* ]]; then
        required_fields=("id" "title" "type" "version" "lastUpdate")
    elif [[ "$file" == *"/catalogue/assessments/"* ]]; then
        required_fields=("id" "title" "type" "version" "lastUpdate")
    else
        return 0
    fi
    for field in "${required_fields[@]}"; do
        if ! grep -q "$field" "$file"; then
            missing_fields="$missing_fields $field"
        fi
    done
    echo "$missing_fields"
}

# Function to validate file structure
validate_file() {
    local file="$1"
    local file_type=""
    local issues=""
    TOTAL_FILES=$((TOTAL_FILES + 1))
    # Determine file type
    if [[ "$file" == *"/catalogue/risks/"* ]]; then
        file_type="Risk"
    elif [[ "$file" == *"/catalogue/indicators/"* ]]; then
        file_type="Indicator"
    elif [[ "$file" == *"/catalogue/assessments/"* ]]; then
        file_type="Assessment"
    else
        return 0
    fi
    echo -n "Checking $file_type: $(basename "$file") ... "
    # Check YAML front matter
    if [[ "$(check_yaml_front_matter "$file")" == "false" ]]; then
        issues="$issues Missing YAML front matter"
    fi
    # Check required fields
    missing_fields=$(check_required_fields "$file")
    if [[ -n "$missing_fields" ]]; then
        issues="$issues Missing fields:$missing_fields"
    fi
    # Check for basic markdown structure
    if ! grep -q "^# " "$file"; then
        issues="$issues Missing main heading"
    fi
    # Check for description section
    if ! grep -q "##.*Description\|##.*🧠" "$file"; then
        issues="$issues Missing description section"
    fi
    # Check file size (warn if too small)
    file_size=$(wc -c < "$file")
    if [[ $file_size -lt 1000 ]]; then
        issues="$issues File seems too small ($file_size bytes)"
    fi
    # Report results
    if [[ -n "$issues" ]]; then
        echo -e "${RED}❌${NC}"
        echo -e "  ${RED}Issues:${NC}$issues"
        INVALID_FILES=$((INVALID_FILES + 1))
    else
        echo -e "${GREEN}✅${NC}"
        VALID_FILES=$((VALID_FILES + 1))
    fi
}

# Validate framework catalogue files

echo -e "\n${YELLOW}Validating Risk Files:${NC}"
for file in ../catalogue/risks/*.md; do
    if [[ -f "$file" ]]; then
        validate_file "$file"
    fi
done

echo -e "\n${YELLOW}Validating Indicator Files:${NC}"
for file in ../catalogue/indicators/*.md; do
    if [[ -f "$file" ]]; then
        validate_file "$file"
    fi
done

echo -e "\n${YELLOW}Validating Assessment Files:${NC}"
for file in ../catalogue/assessments/*.md; do
    if [[ -f "$file" ]]; then
        validate_file "$file"
    fi
done

# Summary
echo -e "\n${YELLOW}Validation Summary:${NC}"
echo "=================================================="
echo -e "Total files checked: ${TOTAL_FILES}"
echo -e "Valid files: ${GREEN}${VALID_FILES}${NC}"
echo -e "Invalid files: ${RED}${INVALID_FILES}${NC}"
echo -e "Warnings: ${YELLOW}${WARNINGS}${NC}"

# Exit with error if any files are invalid
if [[ $INVALID_FILES -gt 0 ]]; then
    echo -e "\n${RED}❌ Validation failed! Please fix the issues above.${NC}"
    exit 1
else
    echo -e "\n${GREEN}✅ All files passed validation!${NC}"
    exit 0
fi 