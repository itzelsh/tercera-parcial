defmodule MayorDeedad do
    def mayor1(edad) do
        unless edad >= 18 do
            "Menor de edad"
        end
    end
end

#ejemplo 2

defmodule MayorDeEdad do
    def mayor1(edad) do
        unless edad >= 18 do
            "Es menor de edad"
        end
    end
    def mayor2(edad) do
        if edad >= 18 do
            "Es mayor de edad"
        end
    end
end