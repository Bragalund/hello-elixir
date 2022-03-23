# Hello Elixir  

Repository for experimenting with elixir.  
A dynamic functional programming language 
which runs on BEAM virtual machine.

## Prerequisits  

Have postgres running locally.

```sh
cd postgres-db
docker-compose up
```

## Run mvc-webpage  

Using elixir and saturn.  

```sh
cd mvc-webpage/saturn
mix ecto.create # Runs db-migrations
mix phx.server  # Starts webserver. Reachable at localhost:4000/dashboard
```
