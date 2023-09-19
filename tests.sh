#!/bin/bash

# Define variables
TEST_SERVICE_NAME='serverless-nasa-test'
URL=$(gcloud run services list --platform managed | awk "/$TEST_SERVICE_NAME/ {print \$4}")


# This loop checks the HTTP response for a '200' status code five times, with a 5-second interval between each attempt.
for counter in {1..5}
do
    HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)
    if [ $HTTP_CODE == '200' ]; then
        echo 'Test Passed Successfully'
        exit 0
    else
        sleep 5
    fi
done

# If the tests fail to receive a '200' response after five attempts, an error will be raised, displaying the last received HTTP status code.
echo "Test Failed with Status Code $HTTP_CODE"
exit 1