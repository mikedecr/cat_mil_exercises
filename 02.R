
memoize <- function(f) {
    cache <- list()
    query <- function(x) {
        print(cache)
        if (x %in% names(cache))
            cache[[x]]
        else
            cache[[x]] <- f(x)
    }
    return(query)
}


sleep_add <- function(x) {
    Sys.sleep(2)
    x + 1
}


system.time(sleep_add(5))


memo_add <- memoize(sleep_add)

memo_add(5) #2s
memo_add(5) #2s



