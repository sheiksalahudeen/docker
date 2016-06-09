mkdir splitfiles
for f in *.xml
do
	echo "Processing $f"
	cp $f splitfiles
	cd splitfiles
	xml_split -g 10000 $f
	rm -f $f
	filename=$(echo $f | cut -f 1 -d '.')
	rm -f "$filename-00.xml"
	cd ..		
done
echo "Finished Processing"
