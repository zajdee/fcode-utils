\ LocalTest.fth
\    Updated Wed, 25 Jan 2006 at 14:33 PST by David L. Paktor

fcode-version2

	\  Optionally omitting inclusion of  LocalValuesSupport
	\  Correct inclusion is in  TokoLoco/SupportedLocalTest.fth
[ifdef] dont_omit_support
    fload LocalValuesSupport.fth
[endif]

h# deaf constant dean

: faber ( n3 n2 n1 -- alloc-addr size $addr,len )
     { _otter _weasel _skunk ; _muskrat _mole }
   \  _otter is initialized with the value of n3
   \  _weasel is initialized with the value of n2
   \  _skunk is initialized with the value of n1
   \  _muskrat and _mole are uninitialized

   \  Use n1 to determine an amount of memory to allocate, and
   \  stuff the address into _mole
   _skunk 40 * -> _muskrat
   _muskrat alloc-mem  -> _mole

f[
123 456 789  3dup
   to  _otter
     _otter
        constant
	    seegammanoo
         dean constant  wenkroy
 ]f

   _weasel .h type
   _otter  .d  type
   _mole _muskrat _mole count
;

f[
     
 ]f

: miracle ( n3 n2 n1 -- m3 m2 m1 )
   { _curly _larry _moe | _shemp _besser _joe }
     ." Nyuk! " _curly .h cr
     ." Why, you... " _moe .d cr
     ." Ouch! " _larry  . 
     _curly _moe + -> _shemp
     _larry _moe + -> _besser
     _besser _curly + -> _joe
     _joe _besser   8  faber type free-mem
     _moe _larry    8  faber type free-mem
     _curly _besser 8  faber type free-mem
     _larry _shemp
;

: ordinary ( -- )
   123 456 789 miracle
;
 
fcode-end

