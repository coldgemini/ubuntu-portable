find . -maxdepth 1 -type d -exec sh -c "echo '{}'; ls -1 '{}' | wc -l" \; | xargs -n 2 | awk '{print $1" "$2}'
