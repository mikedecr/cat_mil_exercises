# Category consists of objects and arrows
# arrows represent morphisms or maps: a function f : A -> B
# maps are associative
# there are identity maps: arrows from an object to itself
# any map composed with identity is the same map



# 1.1: identify function


# -------------------------------
#  1.2: composition function
# -------------------------------

CL(g, f) = g ∘ f
CR(f, g) = CL(g,f)

# test composition
double(a) = 2a
add1(a) = a + 1
@assert CL(add1, double)(5) == 11
@assert CR(add1, double)(5) == 12

# -------------------------------
#  identity function
# -------------------------------

identity


# -------------------------------
#  test identity function
# -------------------------------

@assert add1(5) == (identity ∘ add1)(5)

