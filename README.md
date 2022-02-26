# smart_task

Ruby script that reads a log file containing routes and their visitors ip and orders them.

Meant for the hiring process of Smart Pension.

# How to use

To run the script you must pass the path to the log as an argument:

~~~
./ruby_app/services/parse_smartly webserver.log
~~~

This should return ordered lists with the pages with most views and most unique views.

# Possible improvements

- Validate log data: invalid ips, invalid routes. Add specific exceptions to each. E.g.: SyntaxError, 'Invalid ip'
- Optimize the reading process for big files, possibly by splitting and processing in chunks.ñ
- Further add test cases. e.g.: mp4 file changed to .log extension.
- Save the script response somewhere (DB, txt file).
- Improve the SmartLog class with methods to process its @result attribute.

# MIT License

    Copyright (c) Microsoft Corporation.

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE
