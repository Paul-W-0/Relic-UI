#!/bin/bash
# Relic UI Build Script
# This script combines all CSS component files into a single distributable file

echo "Building Relic UI..."

# Create dist directory if it doesn't exist
mkdir -p dist

# Combine all CSS files
cat components/base.css \
    components/grid.css \
    components/button.css \
    components/card.css \
    components/navbar.css \
    components/dropdown.css \
    components/forms.css \
    components/banner.css \
    components/popups.css > dist/relic-ui.css

echo "✓ Created dist/relic-ui.css"

# Add header comment
{
  echo "/* Relic UI v1.0.0 - Modern CSS Framework */"
  echo "/* https://github.com/Paul-W-0/Relic-UI */"
  echo "/* License: MIT */"
  echo ""
  cat dist/relic-ui.css
} > dist/relic-ui.tmp.css && mv dist/relic-ui.tmp.css dist/relic-ui.css

# Create a simple minified version (basic whitespace removal)
# For production, use a proper CSS minifier like csso or clean-css
cat dist/relic-ui.css | \
  sed 's/\/\*.*\*\///g' | \
  sed 's/  */ /g' | \
  tr -d '\n' | \
  sed 's/ *{ */{/g' | \
  sed 's/ *} */}/g' | \
  sed 's/ *: */:/g' | \
  sed 's/ *; */;/g' | \
  sed 's/ *, */,/g' > dist/relic-ui.min.css

echo "✓ Created dist/relic-ui.min.css"

# Get file sizes
echo ""
echo "Build Summary:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Full version:    $(wc -c < dist/relic-ui.css | awk '{print int($1/1024)"KB"}')"
echo "Minified:        $(wc -c < dist/relic-ui.min.css | awk '{print int($1/1024)"KB"}')"
echo ""
echo "✓ Build complete!"
