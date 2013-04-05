Pointed BButton
===============

This is an extension of BButton to create pointed buttons, similar to the UINavigationController back buttons.

For BButton information see the Githun Repo of Mathieu Bolard: 
https://github.com/mattlawer/BButton

<img src="http://img805.imageshack.us/img805/884/pointedbbuttons.png" />

Usage
-----

Assuming you have already imported BButton, start by importing <code>PointedBButton.m</code> and <code>BButton.h</code> to your Xcode project.

### Use it with Interface Builder : ###

1. Create an UIButton in Interface Builder and change the class to PointedBButton.

2. You can set the target and selector with Interface Builder just like you do with an UIButton.


### Use it without Interface Builder : ###

1. Import the PointedBButton class header :

		#import "PointedBButton.h"
		
2. Create the PointedBButton and add it to a visible view. It will just look like a BButton unless you call <code>setDirection</code> to either <code>PointedButtonDirectionLeft</code> or <code>PointedButtonDirectionRight</code>.

		PointedBButton *btn = [[PointedBButton alloc] initWithFrame:CGRectMake(32.0, 20.0, 112.0, 40.0)];
        [btn setTitle:@"Login" forState:UIControlStateNormal]; // Set the button title
        [btn addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        btn.color = [UIColor purpleColor]; // Set purple color
        [btn setDirection:PointedButtonDirectionLeft];
        [self.view addSubview:btn];
        [btn release];
    
    
Example
-------

Example with some random colors: see above.

License
-------

Copyright for BButton (c) 2013 Mathieu Bolard. All rights reserved. <br />
Copyright PointedBButton (c) 2013, Sascha Mundstein. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 
* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

* Neither the name of Sascha Mundstein, mundstein, Mathieu Bolard, mattlawer nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Mathieu Bolard BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Contact
-------

mundstein@post.harvard.edu
