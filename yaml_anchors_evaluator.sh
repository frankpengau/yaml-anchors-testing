#!/bin/bash

# Define the input YAML file
input_yaml="yaml_input_file.yml"

# Define the output YAML file
output_yaml="expanded_output.yml"

# Use yq to expand YAML anchors and aliases
yq eval 'explode(.)' "$input_yaml" > "$output_yaml"

echo "YAML anchors expanded and saved to $output_yaml"
