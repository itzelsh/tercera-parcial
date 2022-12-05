defmodule Cadena do 
    def concatenar(cad1, cad2, separador \\ " ") do 
        cad1 <> separador <> cad2
    end
end
IO.puts(Cadena.concatenar("Hola", "Mundo"))
IO.puts(Cadena.concatenar("Hola", "Mundo", "<->"))