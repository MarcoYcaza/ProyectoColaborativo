#!/bin/bash

echo -n "Type your request: "
read user_input

response=$(curl -s https://api.openai.com/v1/completions \
	        -H "Content-Type: application/json" \
	        -H "Authorization: Bearer $OPENAI_API_KEY_PERSONAL" \
	        -d "{\"model\": \"text-davinci-003\",
		     \"prompt\": \"$user_input\",
		     \"temperature\": 0.9,
		     \"max_tokens\": 150,
		     \"top_p\": 1,
		     \"frequency_penalty\": 0,
		     \"presence_penalty\": 0.6}" | jq -r '.choices[0].text'
	  )

echo "Output": $response

