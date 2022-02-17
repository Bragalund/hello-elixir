defmodule Hello do
    def hello do
        IO.puts "Hello World"
    end

    def is_error(a) do
        if a==true do
            :ok
        else
            :error
        end
    end
end

defmodule Maths do
    def sum(a,b) do
     a + b
    end
end

