# Tweet your SocketStream and Chaplin
This is an example app built with [SocketStream](https://github.com/socketstream/socketstream) &
[Chaplin](https://github.com/chaplinjs/chaplin), forked from [Tweet your brunch](https://github.com/brunch/twitter).

![](http://brunch.io/images/screenshots/twitter.png)

## Main difference from the brunch version
* Modified [Chaplin](https://github.com/yiwang/chaplin) to work with SocketStream.
* [ss-handlebars](https://github.com/yiwang/ss-handlebars) used to replace `template = require` with `template = ss.tmpl` in views.
* SocketStream style `require` using relative path.


## Getting started
Clone the repo and run `npm install` & [`nodemon`](https://github.com/remy/nodemon).

## License
The MIT license.

Copyright (c) Yi Wang (http://www.yi-wang.me), Paul Miller (http://paulmillr.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
