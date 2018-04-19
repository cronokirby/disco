{-|
Module
Description : Contains the types of entities related to Channels.

Like other Type modules, the type definitions here need to be referenced
in the abstract definition of the core api types, which is why
these aren't joined to the API module.
-}
module Network.Disco.Channel.Types
    ( Channel(..)
    )
where


-- | Represents a single Channel in a guild.
data Channel = Channel
