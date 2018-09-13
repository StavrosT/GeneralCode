rootpath=/home/stavros/Documents/ABIDE_1/111_MRC_AIMS/rsfMRI/raw_data/
cd $rootpath
for g in *0*
do

	cd $g/preproc_2/CSV
	echo "I am in ${g}"
	echo "${g}" >> ~/Hrows.txt
	head -1 ${g}_H.csv | sed 's/[^,]//g' | wc -c
	echo $(head -1 ${g}_H.csv | sed 's/[^,]//g' | wc -c) >> ~/Hrows.txt
	cd $rootpath
done

