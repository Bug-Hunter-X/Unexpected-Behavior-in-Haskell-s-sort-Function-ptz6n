```haskell
import Data.List (sort)
import Data.Ord (comparing)

main :: IO ()
main = do
  let nums = [1, 3, 2, 4, 5]
  let sortedNums = sort nums
  print sortedNums
  let customNums = [(1, "a"), (3, "b"), (2, "c")]
  let sortedCustomNums = sortOn ("(", comparing fst) customNums
  print sortedCustomNums

--Using sortOn for better control, handles complex types
sortOn :: (a -> b) -> [a] -> [a]
sortOn f xs = sortBy (comparing f) xs

```