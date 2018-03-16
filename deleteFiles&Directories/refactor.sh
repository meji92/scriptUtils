rename 's/meshblu-core/meshblujs/g' *
decaffeinate .
find . -name "*.coffee" -type f -delete
find . -name "coffeelint.json" -type f -delete
find . -name "LICENSE" -type f -delete
find . -name "README.md" -type f -delete
find -type d -name .git -exec rm -rf {} \;


