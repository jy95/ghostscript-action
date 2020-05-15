#!/bin/sh

set -e

warn() {
  echo "::warning :: $1"
}

error() {
  echo "::error :: $1"
  exit 1
}

# variable
root_file="$1"
output_file="$2"
user_parameters="$3"
default_parameters="-sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH"

if [ -z "$root_file" ] || [ ! -f "$root_file" ]; then
  error "Input 'file' is empty or missing."
fi

if [ -f "$output_file" ]; then
  error "Input 'output' already exists : please use another name."
fi

# Create command here
command="gs ${default_parameters} -sOutputFile=${output_file} ${user_parameters} ${root_file}"

eval "$command"