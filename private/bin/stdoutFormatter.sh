#!/bin/bash

# Colors
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[1;33m'
export BLUE='\033[1;36m'
export PURPLE='\033[1;35m'

export NC='\033[0m' # No color

# Background colors
export BG_RED='\033[41m'
export BG_GREEN='\033[42m'
export BG_YELLOW='\033[43m'
export BG_BLUE='\033[44m'
export BG_PURPLE='\033[45m'
export BG_CYAN='\033[46m'
export BG_WHITE='\033[47m'

# Text formatting
export BOLD='\033[1m'
export UNDERLINE='\033[4m'
export INVERT='\033[7m'

# Unicode characters
export CHECKMARK='\u2705'
export CROSSMARK='\xE2\x9C\x98'
export WARNING='\xE2\x9A\xA0'
export INFO='\xE2\x84\xB9'
export QUESTION='\xE2\x9D\x93'

# Divider
export DIVIDER='------------------------------------------'


success() {
  echo -e "${GREEN}${DIVIDER}${NC}"
  echo -e "${GREEN}${BOLD}${CHECKMARK} [SUCCESS]: $1 ${NC}"
  echo -e "${GREEN}${DIVIDER}${NC}"
}

failed() {
  echo -e "${RED}${DIVIDER}${NC}"
  echo -e "${RED}${BOLD}${CROSSMARK} [FAILED]: $1 ${NC}"
  echo -e "${RED}${DIVIDER}${NC}"
}

info() {
  echo -e "${BLUE}${DIVIDER}${NC}"
  echo -e "${BLUE}${UNDERLINE}${INFO}  [INFO]: $1 ${NC}"
  echo -e "${BLUE}${DIVIDER}${NC}"
}

question() {
  echo -e "${PURPLE}${DIVIDER}${NC}"
  echo -e "${PURPLE}${BOLD}${QUESTION} [QUESTION]: $1 ${NC}"
  echo -e "${PURPLE}${DIVIDER}${NC}"
}

warning() {
  echo -e "${YELLOW}${DIVIDER}${NC}"
  echo -e "${YELLOW}${UNDERLINE}${WARNING} [WARNING]: $1 ${NC}"
  echo -e "${YELLOW}${DIVIDER}${NC}"
}
