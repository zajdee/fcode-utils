\  Test whether too-large "Case" statement messes up the Tokenizer.
\  Body generated by script


fcode-version2

headers

: too-large-case ( n -- )

    ." Let's give it a large back-reference too."
    begin  ." We've just begun"

    fload  TooLargeCase_body.fth

   ."  And here we are!"
   exit
   ."  Well, we needed some way out!"

    again  ."  Back to the fuchsia."
;

\  Let's make a small jump, just to see what normal looks like
: control-example
    ."  Small non-loop"
    begin   ."  Here's the beguine"
       ." and the way out"
       exit
       ." and the jump back"
    again   ."  Never do this"
;

fcode-end

