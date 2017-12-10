newtype EitherT e m a = EitherT
  { runEitherT :: m (Either e a) }

-----------------------------------------------------------------------------
-- 1.
instance Functor m => Functor (EitherT e m) where
  fmap f (EitherT x) = EitherT $ (fmap . fmap) f x

-----------------------------------------------------------------------------
-- 2.
instance Applicative m => Applicative (EitherT e m) where
  pure x = EitherT (pure (pure x))
  EitherT f <*> EitherT x = EitherT $ (<*>) <$> f <*> x
