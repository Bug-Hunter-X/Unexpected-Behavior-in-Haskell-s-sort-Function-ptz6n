```haskell
import Data.List (sort)

main :: IO ()
main = do
  let nums = [1, 3, 2, 4, 5]
  let sortedNums = sort nums
  print sortedNums -- Expected output: [1, 2, 3, 4, 5]
```