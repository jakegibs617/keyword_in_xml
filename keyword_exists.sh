# the purpose of this script is to find whether a keyword exists in a blog post
# so that seo purposes, I can go in and manually decide whether to link it to a PLP

# The ultimate goal is to have a 
# list of urls 
# list of keywords

# generate a report on which urls have which keywords in the body of the content

# ----------------
# System Requirements
# brew install xmlstarlet

#!/bin/bash 
function keywords_in_xml {

 	# for /blog/feed, 
 		# loop through each tag 
 			# $url = <link>
			# $body = <description>

		description=$(xmllint --xpath '//description' xmltestdata.xml)
		keywords=('the keyord baz bat')
		outcome=()
		index=0;
		for word in $keywords; do
			index=$[index +1]

			# if the keyword is in the description, save the word
			if [[ $description == *$word* ]]; then
				outcome+=" ${word},"
			fi

		done
	echo "Keywords found: $outcome"
}
keywords_in_xml



