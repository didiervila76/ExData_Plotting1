\documentclass{article}

\begin{document}
\SweaveOpts{concordance=TRUE}

n <- 20 
pvals <- seq(0.1, 0.9, by = 0.05) 

nosim <- 1000 
coverage <- sapply(pvals, function(p) 
{    phats <- rbinom(nosim, prob = p, size = n)/n   
    print(phats)
    ll <- phats - qnorm(0.975) * sqrt(phats * (1 - phats)/n)  
    print(ll)
    ul <- phats + qnorm(0.975) * sqrt(phats * (1 - phats)/n)    
    print(ul)
    mean(ll < p & ul > p) 
}
)


\end{document}