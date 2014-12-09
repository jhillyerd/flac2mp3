flac2mp3 - FLAC to MP3 converter
================================

James A. Hillyerd  
Release: 1.2

Description
-----------

flac2mp3 is a tool to convert potentially large sets of FLAC audio 
files into the MP3 audio format.  It is implemented as a bash shell 
script, and should run on any Unix-like operating system.

I wrote flac2mp3 because I am archiving my entire CD collection to 
FLAC, and would like an easy way to have a mirror image in MP3 format.


Change Log
----------

### 1.0

  - Original Release

### 1.0.1

  - Fix encode failed detection bug.
  - If encoding fails, try encoding without specifying a genre.

### 1.0.2

  - Properly handle lower-case FLAC metadata tag field names.

### 1.0.3

  - Use metaflac `--export-tags-to`, `--export-vc--to` is deprecated.
    (Thanks Daniel)
  - Check for and source `.flac2mp3.conf` in user's home directory.
    (Thanks Webograph)
  - Added ebuild for Gentoo. (Thanks Webograph)

### 1.1

  - Add year to ID3 tag - oops. (Thanks Alain)
  - Use file locking to allow more than one instance of flac2mp3 to run 
    in parallel the same time for multi-CPU machines.  (Thanks Jeramey)
  - Optionally copy artwork (\*.jpg) to MP3 target directory.

### 1.2

  - Output MP3s to current directory if no output dir specified (Thanks Eric)
  - Create output directory if it doesn't already exist
  - Fix bash segfault when you have too many FLACs (Thanks Richard)


Requirements
------------

You will need to have the following applications installed:

  Bash Shell -- Almost every Linux distribution includes this

  Unix utilities -- Utilities included in every copy of unix since the 
    dawn of time, including 'find', 'sed' and 'sort'.

  FLAC tools -- Available on the FLAC website:
    http://flac.sourceforge.net

  Lame -- Included in many Linux distros, also available on the
    LAME website: http://lame.sourceforge.net


Configuration
-------------

There is a configuration section at the top of the flac2mp3 script.  
Alternately you may place your configuration into `$HOME/.flac2mp3.conf`.

You will probably want to adjust the `LAME_OPTS` to your liking.  (See
output of `lame --longhelp` for details) You may also need to
set the paths to `flac`, `metaflac` and `lame` if flac2mp3 cannot find
them on it's own.


Usage
-----

flac2mp3 is very easy to use:

    flac2mp3 <flac-input-dir> <mp3-output-dir>


License
-------

flac2mp3 is public domain.  If you can figure out how to make money 
off it, please feel free to do so!


Updates
-------

Please see the [GitHub website](https://github.com/jhillyerd/flac2mp3) for 
updates.
