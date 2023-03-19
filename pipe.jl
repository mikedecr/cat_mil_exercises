
(g ∘ f)(5)
5 |> f |> g

pipe(f...) = foldr(f, args)
pipe(f, g) = g ∘ f

5 pipe f

⋅(g, f) = x -> g(f(x))

