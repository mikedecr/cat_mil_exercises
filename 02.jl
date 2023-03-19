# 02. Functions and types

# --- 1. function that memoizes results of another function ---

function memoize(func)
    cache = Dict()
    function query_func(x)
        haskey(cache, x) ? cache[x] : cache[x] = func(x)
    end
    return query_func
end

# test on a function that takes a beat
function sleep_add1(x)
    sleep(3)
    x + 1
end

# the memoization will re-execute unless you store the memoized function
cache_add1 = memoize(sleep_add1)

# repeated runs
cache_add1(2)
cache_add1(2)


# --- 2. memoize a RNG function ---
mem_rand = memoize(rand)

mem_rand(2)



# --- memoize a seeded function



# --- 4. test memoization ---

function f(a)
    print("hello")
    return true
end

mem_f = memoize(f)

