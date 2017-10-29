# image-resizer

On the fly image-resizer using Node.js

# Usage

Build the Docker image with

    docker build -t tuananh/image-resizer .

Run the docker container with built image above

    docker run -d \
    -e NODE_ENV='production' \
    -e EXTERNAL_SOURCE_EXAMPLE='http://example.com/' \
    -e PORT='3000' \
    -e LOCAL_FILE_PATH='/app/image-resizer/node_modules/image-resizer' \
    -p 3000:3000 tuananh/image-resizer

In the example above, we proxy the images from `example.com` host. You
can try the below url in browser.

    localhost:3000/eexample/path/to/external/image.jpg

## Licence

The MIT License

Copyright (c) 2017 Tuan Anh Tran

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
