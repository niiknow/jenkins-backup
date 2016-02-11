# jenkins-backup
Script that can run in Jenkins to backup Jenkins.  Say what?

This script will backup to the current workspace folder provided by the first parameter/argument.  This is default to "jenkins" if folder is not provided.  Script will also automatically upload to s3 if aws cli is available.

Execute shell task
```
./run.sh "bucket-name/folder"
```

## Note
* Auto upload to s3 if aws cli exists (must set environment variable in manage jenkins for acccess id and key)
* Invalid bucket name or folder will result in error:  A client error (NoSuchBucket) occurred when calling the CreateMultipartUpload operation: The specified bucket does not exist
