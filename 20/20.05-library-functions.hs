import           Data.Foldable
import           Data.Monoid

-----------------------------------------------------------------------------
-- 1.
sum' :: (Foldable t, Num a) => t a -> a
sum' = getSum . foldMap Sum

-----------------------------------------------------------------------------
-- 2.
product' :: (Foldable t, Num a) => t a -> a
product' = getProduct . foldMap Product

-----------------------------------------------------------------------------
-- 3.
elem' :: (Foldable t, Eq a) => a -> t a -> Bool
elem' x = foldr go False
  where
    go a b = b || x == a

-----------------------------------------------------------------------------
-- 4.
minimum' :: (Foldable t, Ord a) => t a -> Maybe a
minimum' = foldr go Nothing
  where
    go x Nothing  = Just x
    go x (Just y) = Just (min x y)

-----------------------------------------------------------------------------
-- 5.
maximum' :: (Foldable t, Ord a) => t a -> Maybe a
maximum' = foldr go Nothing
  where
    go x Nothing  = Just x
    go x (Just y) = Just (max x y)
