\name{flagMeth}
\alias{flagMeth}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Flagging outlier function
}
\description{
Flags outliers using beta values from normal tissue referance thresholds. 
}
\usage{
flagMeth(beta, reference = c(all, tcga, geo, blood), p = c(0.01, 0.001, 0.0001, 0.00001))
}
\arguments{
  \item{beta}{
Methylation array beta values
}
  \item{reference}{
Normal tissue data set used to calculate the thresholds
}
  \item{p}{
Threshold calculated from the distribution of normal tissue data
}
}

\value{
matrix with the same rows and coloms names and calls of hyper +1 or hypo -1 compaired to the referance dataset. Probes that are not in the referance dataset return NA. 

}
\references{
NA
}
\author{
Bradley Downs and Leslie Cope
}

\examples{
outlierData=flagMeth(example_data, reference = all, p = 0.01) 

## The function is currently defined as
function (beta, reference = (all, tcga, geo, blood), p = (0.01, 0.001, 
    0.0001, 0.00001)) 
{
   options(scipen = 999)

binDat=matrix(rep(NA,prod(dim(beta))),ncol=ncol(beta))

rownames(binDat)=rownames(beta)
        colnames(binDat)=colnames(beta)

   
        #### get common CpGs
        cpgs=intersect(rownames(beta),rownames(reference))

binDat[cpgs,]=sweep(beta[cpgs,],1, reference[cpgs,paste0("P",p)],">")
binDat[cpgs,][which(sweep(beta[cpgs,],1,reference[cpgs,paste0("P",p)],">"))]=1
binDat[cpgs,][which(sweep(beta[cpgs,],1,reference[cpgs,paste0("N",p)],"<"))]=-1

return(binDat)
    }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
