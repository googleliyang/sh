for i in  replaceStr replaceStr1 # ${...The string you want to be replaced}
do 
   # find . -type f -name "*js*" -exec sed -i "s/$i/''/g" {} + 
   find . -type f -name "*js*" -exec sed -i '' -e  "s/$i/''/g" {} +
done


echo 'be all set, start test'

for l in  replaceStr replaceStr1
do 
   grep -r $l ./*  -l
done
