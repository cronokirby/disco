{-# LANGUAGE GADTs #-}
{-|
Module      : Network.Disco.Core
Description : Contains the abstract api types.

This module exists for the purpose of providing an abstract
(MTL style) specification of how to satisfy the discord API.
If you're not adapting your own monad stack, you probably
want to use one of the more concrete modules.
-}
module Network.Disco.Core ()
where

import           Network.Disco.Channel.Types (Channel)
import           Network.Disco.CoreTypes     (ID)


-- | An abstract specification of discord requests.
-- Each constructor of the GADT represents a single
-- route and action, along with the type it returns.
data DiscordRequest a where
    CreateMessage :: ID Channel -> DiscordRequest ()


-- | A class for monads capable of querying discord's REST API.
-- Rate limiting is not expected to be performed by monads
-- implementing this class.
class Monad m => DiscordAPI m where
    -- | Convert a specification of the request into an actual one.
    runRequest :: DiscordRequest a -> m a
