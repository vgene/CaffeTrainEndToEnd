for file in TestSets/*
	do
		echo $file
		cp $file ./test.txt
		if [ ! -s test.txt ]
			then
			echo "nok:empty"
		else
			./create_imagenet.sh 2>> test.log
			./model_test.sh 2>> test.log
			echo ""
		fi
	done
