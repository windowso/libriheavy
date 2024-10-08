bash run.sh --stage -1 --stop-stage -1
bash run.sh --stage 1 --stop-stage 1
bash run.sh --stage 2 --stop-stage 2

# rm ./download/librilight/small.tar
# rm ./download/librilight/medium.tar

aws --endpoint-url https://conductor.data.apple.com --cli-read-timeout 300 s3 cp download/ s3://afm-common-permanent/ziyangzhang/libriheavy/download/ --recursive
aws --endpoint-url https://conductor.data.apple.com --cli-read-timeout 300 s3 cp cases_and_punc/ s3://afm-common-permanent/ziyangzhang/libriheavy/cases_and_punc/ --recursive
aws --endpoint-url https://conductor.data.apple.com --cli-read-timeout 300 s3 cp upper_no_punc/ s3://afm-common-permanent/ziyangzhang/libriheavy/upper_no_punc/ --recursive