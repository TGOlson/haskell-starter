module Data.RequestExample
    ( TodoItem(..)
    , getTodo
    ) where

import Control.Lens
import Data.Aeson
import Data.Monoid
import Network.Wreq

data TodoItem = TodoItem
    { userId    :: Int
    , id        :: Int
    , title     :: String
    , completed :: Bool
    }
  deriving Show

instance FromJSON TodoItem where
    parseJSON = withObject "TodoItem" $ \v -> TodoItem
        <$> v .: "userId"
        <*> v .: "id"
        <*> v .: "title"
        <*> v .: "completed"

getTodo :: Int -> IO TodoItem
getTodo x = do
    response <- asJSON =<< get url
    return $ response ^. responseBody
  where
    url     = baseUrl <> show x
    baseUrl = "https://jsonplaceholder.typicode.com/todos/"
