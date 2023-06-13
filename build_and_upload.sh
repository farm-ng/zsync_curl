
bash -uexo pipefail staticbuild.sh
if [[ "$GITHUB_REF" != "refs/heads/main" ]] ; then
    aws s3 cp src/zsync_curl s3://temporary-provisioning-artifacts/zsync_curl/"$(uname -m)"/zsync_curl
fi
