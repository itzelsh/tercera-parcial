defmodule TestPublicoPrivado do
    def funcion_publica do
        IO.puts ("#{msg} publico")
        funcion_privada(msg)
    end
    defp funcion_privada(msg) do
        IO.puts ("#{msg} privado")
    end