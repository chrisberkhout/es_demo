# es_demo

A very simple Rails application that uses ElasticSearch as its primary data store.
More info in the [blog post](http://chrisberkhout.com/blog/elasticsearch-as-a-primary-data-store/).

## Get it running

    # get the code
    git clone git://github.com/chrisberkhout/es_demo.git && cd es_demo
    bundle install
    
    # install ElasticSearch full-text search engine
    brew update
    brew install elasticsearch
    
    # create the application's ElasticSearch index
    rake es:create
    
    # start the application using pow (see http://pow.cx)
    ln -s $PWD ~/.pow/es_demo
    open "http://es_demo.dev"
    
    # (optionally) install front-end for browsing and interacting with ElasticSearch
    cd .. && git clone git://github.com/mobz/elasticsearch-head.git && cd elasticsearch-head
    ln -s . public
    ln -s $PWD ~/.pow/elasticsearch-head
    open "http://elasticsearch-head.dev"

## Status

It works! No further development is planned.

## Compatibility

Created using Ruby 1.9.2-p180 and ElasticSearch v0.16.2.

## Feedback

The best way to reach me is via email at gmail.com (chrisberkhout@).

## Copyright

The MIT License

Copyright (C) 2011 by Chris Berkhout (http://chrisberkhout.com)

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
