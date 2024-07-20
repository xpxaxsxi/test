:-module(wasmtst,[x/1]).
/** <module> Simple test module for wasm in browser (in the wasm shell demo)

Usage: 
=|load_files( 'https://raw.githubusercontent.com/xpxaxsxi/test/main/a.pl',[]).|=.
*/

x(hello).
x(world).

%in server:
%use this: library(http/http_cors)
%set this: set_setting(http:cors,['https://wasm.swi-prolog.org']).
test(Data):-
  fetch("http://localhost:5000/hello_world",text,Data).
