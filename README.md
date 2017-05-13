# Siteswap generator

Provides all the sequences of juggling siteswap for a given length of periods.

## Usage

    > ghci
    > :l Siteswap.hs
    > siteswap 3 (here, you can choose between 1 and 5 [will take larger time, even a crash, for higher numbers])
    
## Tests

They are done using Hspec.

    > runhaskell Spec.Utils.hs