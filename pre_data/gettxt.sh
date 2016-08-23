cd train
i=0
for dir in *
do
	cd $dir
	for file in *
	do
		echo $dir/$file $i >> ../../train.txt
	done
	cd ../
	i=$(($i+1))
done
cd ../


cd val
i=0
for dir in *
do
	cd $dir
	for file in *
	do
		echo $dir/$file $i >> ../../val.txt
		echo $dir/$file 0 >> ../../test.txt
	done
	cd ../
	i=$(($i+1))
done
cd ../
