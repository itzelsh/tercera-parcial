defmodule ModuloImportado do
    def funcion_importada(msg) do
        IO.puts(msg)
    end
end

#Manera directa de importar

defmodule ModuloMain do
    def main do
        IO.puts("Funcion main")
        ModuloImportado.funcion_importada("Esta Funcion es importada")
    end
end

#manera de alias

defmodule ModuloMain do
    alias ModuloImportado, as: MI
    def main do
        IO.puts("Funcion main")
        MI.funcion_importada("Esta Funcion es importada")
    end
end