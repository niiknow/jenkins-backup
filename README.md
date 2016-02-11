# jenkins-backup
Script that can run in Jenkins to backup Jenkins.  Say what?

This script will create tar.gz backup of JENKINS_HOME into the current job workspace with folder provided as the first parameter/argument.  The default value of this parameter is "jenkins".  This Script will also automatically upload to s3 if aws cli is available.

* Create Jenkins job to this git repository.
* Create build task to execute shell with:
```
./run.sh "bucket-name/folder"
```

## Note
* Auto upload to s3 if aws cli exists (must set environment variable in manage jenkins for acccess id and key)
* Invalid bucket name or folder will result in error:  A client error (NoSuchBucket) occurred when calling the CreateMultipartUpload operation: The specified bucket does not exist

## License
The MIT License (MIT)

Copyright (c) 2015 niiknow

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
