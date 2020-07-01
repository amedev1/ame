# Another Memory Ends

Welcome to ame, a passion project exclusively in C.
For now it consists of libraries and small tools, currently being converted from C++ to C.
See release folder for binary versions of tools.

# Code Documentation

Visit [ame source documentation](https://amedev1.github.io/ame/), code documentation for ame generated with custom-made "code_doc_generator" tool.

Feel free to download it to quickly generate HTML documentation for your C code.

# Blog

I also write articles in a [blog](https://ame-dev.com), programming updates on ame project, as well as short reviews of movies, TV series, video games, etc.

# Mentions

I found some awesome code available online, with some I was just inspired by, to try and implement the ideas myself, and others I just integrated  the code into my own because it was just great.
I never take the code as is, I rewrite everything until I understand it correctly, and then I add my own improvements or tweaks.
But I'm happy to list them here (and will include the appropriate licenses if I ever release code):

- ftest library: basic concept inspired by [µnit](https://nemequ.github.io/munit/)
- core library:
  - dynamic strings: `cstr` concept inspired by [sds](https://github.com/antirez/sds), I liked how it worked so did my own implementation
  - dynamic buffers: the famous [Stretchy buffer by Sean Barret](https://github.com/nothings/stb/blob/master/stretchy_buffer.h), couldn't find a better way to write it
  - memory debugging: memory overshoot functions taken from [Eskil Steenberg's source code](http://www.quelsolaar.com/mergesource.zip)
- code documentation (look and concept): Eskil Steenberg's [website](http://www.gamepipeline.org/) 

Many thanks to all the authors mentioned above!
