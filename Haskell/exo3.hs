module Main where
import System.IO (hSetBuffering, stdout, BufferMode(NoBuffering))
main :: IO ()
main =
do hSetBuffering stdout NoBuffering
   putStr "Digite a nota do trabalho de laboratório ...: "
   laboratório <- readLn
   putStr "Digite a nota da avaliação semestral .......: "
   semestral <- readLn
   putStr "Digite a nota do exame final ...............: "
   final <- readLn
   putStrLn ""
   putStr "Conceito obtido: "
   putStrLn [conceito laboratório semestral final]
conceito :: Float -> Float -> Float -> Char
-- complete a definição da função
conceito notaLaboratorio notaSemestral notaFinal
  | media >= 8 = ’A’
  | media >= 7 = ’B’
  | media >= 6 = ’C’
  | media >= 5 = ’D’
  | otherwise = ’E’
  where
    media = (2*notaLaboratorio + 3*notaSemestral + 5*notaFinal)/10
