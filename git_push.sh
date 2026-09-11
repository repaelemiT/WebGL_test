proj_pre="WebGL_"
commit_name="$1"

build="Build"
SA="StreamingAssets"
idx="index.html"

rm -rf ./$build
rm -rf ./$SA
rm ./$idx

cur_dir=$proj_pre$commit_name
cp -r ../$cur_dir/$build ./$build
cp -r ../$cur_dir/$SA ./$SA
cp ../$cur_dir/$idx ./$idx

git add .
git commit -m $commit_name
git push

