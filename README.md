# textbcast #

textbcast is a rather simple shell script that uses the [Hoiio](http://developer.hoiio.com) API to broadcast a text message to recipients.

# Configuration #

To configure textbcast, edit the config file.
`HOI_APPID` and `HOI_TOKEN` are your Hoiio Application ID and Access Token respectively. `HOI_SENDER` is the name or phone number you want the text message to be from.  

# Usage #

`./bcast.sh <filename>`  
  
`filename` should be a plaintext file containing the list of numbers to text. Each line should contain a single, full number including the country code (e.g. +6590000000). You may add comments by using a #.

# Why? #

* We had a hackathon.
* We wanted to broadcast announcements.
* I was lazy.

# License #

Copyright (c) 2013, A. G. Rahul  
All rights reserved.  

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:  

* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.  
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.  
* The names of its contributors may not be used to endorse or promote products derived from this software without specific prior written permission.  

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL RAHUL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.  
