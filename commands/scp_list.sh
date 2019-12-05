while read file; do scp "zhouxiangyong@volcano:/data2/npydata_cta/nifti/$file" .; done < $1 
