{-# LANGUAGE DuplicateRecordFields #-}
{-|
Module
Description : Contains the types of entities related to Users.

This exists to export the definitions for other modules to reference,
the actual specification of api functions should go in the API module.
-}
module Network.Disco.User.Types
    ( User(..)
    )
where

import           Data.Text               (Text)
import           Network.Disco.CoreTypes (ID (..))


-- TODO incomplete
-- | Represents the type of users in discord.
data User = User
    { id            :: ID User -- ^ The ID of the user
    , name          :: Text -- ^ The username
    , discriminator :: Text -- ^ The 4 integer discriminator after the name
    , avatar        :: Maybe Text -- ^ An avatar hash for the User, if they have one.
    }
