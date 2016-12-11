%%%-------------------------------------------------------------------
%% @doc other_app public API
%% @end
%%%-------------------------------------------------------------------

-module(other_app_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    other_app_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================