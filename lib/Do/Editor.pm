#!/usr/bin/env perl6

class Do::Editor {

    has $.editor = %*ENV{'EDITOR'} // 'nano';

    method open ($filename, $line-number = 1) {

        return run $.editor, $filename if $line-number eq 1;
             
        # pull requests welcome to expand this list
        given $.editor {
            when /code/ {
                # microsoft's visual studio code
                run $.editor, '-g', $filename ~ ':' ~ $line-number;
            }
            when /sublime/ {
                run $.editor, $filename ~ ':' ~ $line-number;
            }
            default {
                # vim, emacs, nano etc
                run $.editor, '+' ~ ~$line-number, $filename;
            }
        }
    }   
}

