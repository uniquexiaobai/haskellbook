-- 1.
-- What's the kind of `a`?
-- a -> a
--
-- Answer:
-- a :: *

-----------------------------------------------------------------------------
-- 2.
-- What are the kinds of `b` and `T`?
-- a -> b a -> T (b a)
--
-- Answer:
-- b :: * -> *
-- T :: * -> *

-----------------------------------------------------------------------------
-- 3.
-- What's the kind of `c`?
-- c a b -> c b a
--
-- Answer:
-- c :: * -> * -> *
