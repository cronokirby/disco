{-# LANGUAGE DuplicateRecordFields #-}
{-|
Module      : Network.Disco.Channel.Types
Description : Contains the types of entities related to Channels.

Like other Type modules, the type definitions here need to be referenced
in the abstract definition of the core api types, which is why
these aren't joined to the API module.
-}
module Network.Disco.Channel.Types
    ( Channel(..)
    )
where

import           Data.Text                (Text)
import           Network.Disco.CoreTypes  (ID)
import           Network.Disco.User.Types (User)


-- | The type of permission mask in overwrites.
-- This represents a set of permissions that need to be
-- either added or removed from a PermissionSet.
newtype PermissionMask = PermissionMask Int


data Overwrite = MemberOverwrite
    { id    :: ID User -- ^ The user this overwrite applies to.
    , allow :: PermissionMask -- ^ The mask of permissions allowed.
    , deny  :: PermissionMask -- ^ The mask of permissions removed.
    }


-- TODO incomplete
-- | Represents the types of all channels in discord.
newtype Channel = ATextChannel TextChannel


-- TODO incomplete
-- | Represents a category of channels in a guild.
data ChannelCategory = ChannelCategory


-- TODO Incomplete
-- | Represents a single text channel in a guild.
data TextChannel = TextChannel
    { id            :: ID TextChannel -- ^ The snowflake corresponding to the channel
    , position      :: Int -- ^ The sorting position of the channel
    , name          :: Text -- ^ The name of the channel
    , topic         :: Text -- ^ The channel topic
    , nsfw          :: Bool -- ^ Whether or not the channel is considered NSFW
    , lastMessageID :: Maybe (ID Message) -- ^ The ID of the last message sent here
    -- | The ID of the category this channel belongs to.
    , parentID      :: Maybe (ID ChannelCategory)
    }


-- TODO incomplete
-- | Represents a single message in any discord channel.
data Message = Message
