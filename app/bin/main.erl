%-include_lib("epgsql/include/epgsql.hrl").
-module(main).
-export([start/0]).

start() ->
  {ok, C} = pgsql:connect("db","maria","pass", [{database, "beverage"}]),
  {ok, Columns, Rows} = pgsql:squery(C, "select * from public.pop").
