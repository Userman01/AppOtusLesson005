MODULE="APILayer/Sources/APILayer/"

openapi-generator generate -i "Specifications/apilayer.yaml" -g swift5 -o "Specifications/apigenerate" --additional-properties=responseAs=AsyncAwait
rm -r $MODULE*
cp -R "Specifications/apigenerate/OpenAPIClient/Classes/OpenAPIs/". $MODULE
rm -r "Specifications/apigenerate"
