	data FacebookReq a where
 	 	GetObject      :: Id -> FacebookReq Object
 	  	GetUser        :: UserId -> FacebookReq User
  		GetUserFriends :: UserId -> FacebookReq [Friend]
  		deriving Typeable
		deriving instance Eq (FacebookReq a)
		deriving instance Show (FacebookReq a)

	instance Show1 FacebookReq where show1 = show

	instance Hashable (FacebookReq a) where
 	hashWithSalt s (GetObject (Id id))      = hashWithSalt s (0::Int,id)
  	hashWithSalt s (GetUser (Id id))        = hashWithSalt s (1::Int,id)
  	hashWithSalt s (GetUserFriends (Id id)) = hashWithSalt s (2::Int,id)