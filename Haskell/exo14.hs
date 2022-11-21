
ultimo lista = head (reverse lista)

ultimo’ lista = lista !! (length lista - 1)

ultimo’’ lista = head (drop (length lista - 1) lista)