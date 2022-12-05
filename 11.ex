defmodule Geometria do
    def perimetro1(l) do cuadrado(l)
    def perimetro2(l) do Geometria.cuadrado(l) 
    def cuadrado(l) do 4*l
end