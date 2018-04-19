{-|
Module      : Network.Disco.CoreTypes
Description : Contains core types used throughout the library.

Many types, like snowflakes, are used pervasively, and thus need
a common module to export them.
-}
module Network.Disco.CoreTypes
    ( ID(..)
    )
where

import           Data.Word (Word64)


-- | The type of identifiers for different objects returned by the api.
-- Discord refers to these as "snowflakes", and are internally just
-- a 64 bit integer.
-- A newtype is necessary because only some integers are valid
-- snowflakes. Furthermore, a phantom type is necessary because
-- we don't want to confuse IDs for different entities.
newtype ID a = ID Word64
