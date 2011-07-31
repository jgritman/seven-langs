-module(translation_monitor).
-export([loop/0,translate/2]).

loop() ->
	process_flag(trap_exit, true),
	receive
		new ->
			io:format("Creating translate service"),
			register(translator, spawn_link(fun translate_service:loop/0)),
			loop();
			
		{'EXIT', From, Reason} ->
			io:format("The translate service ~p dies with reason ~p", [From,Reason]),
			io:format("Restarting.~n"),
			self() ! new,
			loop()
		end.
		
translate(To, Word) ->
	To ! {translator, Word},	
		receive 
			Translation -> Translation
	end.
	