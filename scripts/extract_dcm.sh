for file in ./*/*.dcm; do
	echo $file
	# echo "${file/dcm/jpg}"
	gdcmraw $file ${file/dcm/jpg}
done
