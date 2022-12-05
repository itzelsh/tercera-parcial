defmodule Geometria do
    defmodule Cuadrado do
        def perimetro(l) do
            4 * l
        end
    end
    defmodule Rectangulo do
        def perimetro(l1, l2) do
            2 * (l1 + l2)
        end
    end
end