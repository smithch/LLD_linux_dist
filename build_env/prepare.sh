echo "Dist Root: ${DIST_ROOT:?}"
echo "LFS: ${LFS:?}"

mkdir -p $LFS/sources

for f in $(cat $DIST_ROOT/build_env/build_env_list)
do
    bn=$(basename $f)
    echo $bn

    if ! test -f $LFS/sources/$bn ; then
        wget $f -O $LFS/sources/$bn
    fi
done; 
