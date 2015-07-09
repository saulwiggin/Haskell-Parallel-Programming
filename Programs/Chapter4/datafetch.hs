module FB
  ( getObject
  , getUser
  , getUserFriends
  , Id(..), Friend(..), User(..)
  ) where

import FB.DataSource
import Data.Aeson
import Facebook (Id(..), Friend(..), User(..))

import Haxl.Core

getObject :: Id -> GenHaxl u Object
getObject id = dataFetch (GetObject id)

getUser :: Id -> GenHaxl u User
getUser id = dataFetch (GetUser id)

getUserFriends :: Id -> GenHaxl u [Friend]
getUserFriends id = dataFetch (GetUserFriends id)