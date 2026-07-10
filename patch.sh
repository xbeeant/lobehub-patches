find ../patch-repo/patches -name "*.patch" | sort | while read patch_file; do
    echo "Applying: $patch_file"
    if ! git apply --ignore-whitespace "$patch_file"; then
    echo "::error::Failed to apply patch: $patch_file"
    exit 1
    fi
done

echo "All patches applied successfully."