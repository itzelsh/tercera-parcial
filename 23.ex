defmodule Geometria do
    @moduledoc "Calcula el area y el perimetro de un circulo"

    @pi 3.14592

    @doc "Calcula el area de un circulo"
    def area(r) do @pi * r * r
    end

    @doc "Calcula el perimetro de un circulo"
    def circunferencia(r) do 2 * @pi * r
    end