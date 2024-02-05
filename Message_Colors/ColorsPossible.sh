#!/bin/bash

for i in {0..255}; do
  echo -e "\e[38;5;${i}mColor\e[0m"
done
