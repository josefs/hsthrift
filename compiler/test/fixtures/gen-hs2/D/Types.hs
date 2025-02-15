-----------------------------------------------------------------
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
--  @generated
-----------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-overlapping-patterns#-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns#-}
{-# OPTIONS_GHC -fno-warn-incomplete-uni-patterns#-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module D.Types
       (Hstypedef, Hsnewtypeann(Hsnewtypeann, unHsnewtypeann),
        HsStruct(HsStruct, hsStruct_strictann, hsStruct_lazyann,
                 hsStruct_inherit),
        HsStrictAnn(HsStrictAnn, hsStrictAnn_strictann,
                    hsStrictAnn_lazyann, hsStrictAnn_inherit),
        HsLazyAnn(HsLazyAnn, hsLazyAnn_strictann, hsLazyAnn_lazyann,
                  hsLazyAnn_inherit),
        HsPrefixAnn(HsPrefixAnn, structprefixstrictann,
                    structprefixlazyann, structprefixinherit),
        HsUnion(HsUnion_EMPTY, HsUnion_left, HsUnion_right),
        HsUnionNonEmptyAnn(HsUnionNonEmptyAnn_left,
                           HsUnionNonEmptyAnn_right),
        HsEnum(HsEnum_ONE, HsEnum_TWO, HsEnum_THREE, HsEnum__UNKNOWN),
        HsStructNoUnknownAnn(HsStructNoUnknownAnn_ONE,
                             HsStructNoUnknownAnn_TWO, HsStructNoUnknownAnn_THREE),
        HsStructPseudoenumAnn(HsStructPseudoenumAnn,
                              unHsStructPseudoenumAnn),
        hsStructPseudoenumAnn_ONE, hsStructPseudoenumAnn_TWO,
        hsStructPseudoenumAnn_THREE)
       where
import qualified Control.DeepSeq as DeepSeq
import qualified Control.Exception as Exception
import qualified Control.Monad as Monad
import qualified Control.Monad.ST.Trans as ST
import qualified Control.Monad.Trans.Class as Trans
import qualified Data.Aeson as Aeson
import qualified Data.Aeson.Types as Aeson
import qualified Data.Default as Default
import qualified Data.Function as Function
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Hashable as Hashable
import qualified Data.Int as Int
import qualified Data.List as List
import qualified Data.Map.Strict as Map
import qualified Data.Ord as Ord
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text
import qualified Prelude as Prelude
import qualified Thrift.Binary.Parser as Parser
import qualified Thrift.CodegenTypesOnly as Thrift
import Control.Applicative ((<|>), (*>), (<*))
import Data.Aeson ((.:), (.:?), (.=), (.!=))
import Data.Aeson ((.:), (.=))
import Data.Monoid ((<>))
import Prelude ((.), (++), (>), (==))
import Prelude ((.), (<$>), (<*>), (>>=), (==), (++))
import Prelude ((.), (<$>), (<*>), (>>=), (==), (/=), (<), (++))

type Hstypedef = Map.Map Text.Text Text.Text

newtype Hsnewtypeann = Hsnewtypeann{unHsnewtypeann ::
                                    Map.Map Text.Text Text.Text}
                       deriving (Prelude.Eq, Prelude.Show, DeepSeq.NFData, Prelude.Ord)

instance Hashable.Hashable Hsnewtypeann where
  hashWithSalt __salt (Hsnewtypeann __val)
    = Hashable.hashWithSalt __salt
        ((Prelude.map (\ (_k, _v) -> (_k, _v)) . Map.toAscList) __val)

instance Aeson.ToJSON Hsnewtypeann where
  toJSON (Hsnewtypeann __val) = Aeson.toJSON __val

data HsStruct = HsStruct{hsStruct_strictann ::
                         {-# UNPACK #-} !Int.Int32,
                         hsStruct_lazyann :: Int.Int32, hsStruct_inherit :: Int.Int32}
                deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON HsStruct where
  toJSON
    (HsStruct __field__strictann __field__lazyann __field__inherit)
    = Aeson.object
        ("strictann" .= __field__strictann :
           "lazyann" .= __field__lazyann :
             "inherit" .= __field__inherit : Prelude.mempty)

instance Thrift.ThriftStruct HsStruct where
  buildStruct _proxy
    (HsStruct __field__strictann __field__lazyann __field__inherit)
    = Thrift.genStruct _proxy
        (Thrift.genFieldPrim _proxy "strictann" (Thrift.getI32Type _proxy)
           1
           0
           (Thrift.genI32Prim _proxy)
           __field__strictann
           :
           Thrift.genFieldPrim _proxy "lazyann" (Thrift.getI32Type _proxy) 2 1
             (Thrift.genI32Prim _proxy)
             __field__lazyann
             :
             Thrift.genFieldPrim _proxy "inherit" (Thrift.getI32Type _proxy) 3 2
               (Thrift.genI32Prim _proxy)
               __field__inherit
               : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__strictann <- ST.newSTRef Default.def
            __field__lazyann <- ST.newSTRef Default.def
            __field__inherit <- ST.newSTRef Default.def
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__strictann
                                                                          _val
                                                                 2 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__lazyann
                                                                          _val
                                                                 3 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__inherit
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__strictann <- ST.readSTRef
                                                                    __field__strictann
                                             !__val__lazyann <- ST.readSTRef __field__lazyann
                                             !__val__inherit <- ST.readSTRef __field__inherit
                                             Prelude.pure
                                               (HsStruct __val__strictann __val__lazyann
                                                  __val__inherit)
              _idMap
                = HashMap.fromList
                    [("strictann", 1), ("lazyann", 2), ("inherit", 3)]
            _parse 0)

instance DeepSeq.NFData HsStruct where
  rnf (HsStruct __field__strictann __field__lazyann __field__inherit)
    = DeepSeq.rnf __field__strictann `Prelude.seq`
        DeepSeq.rnf __field__lazyann `Prelude.seq`
          DeepSeq.rnf __field__inherit `Prelude.seq` ()

instance Default.Default HsStruct where
  def = HsStruct Default.def Default.def Default.def

instance Hashable.Hashable HsStruct where
  hashWithSalt __salt (HsStruct _strictann _lazyann _inherit)
    = Hashable.hashWithSalt
        (Hashable.hashWithSalt (Hashable.hashWithSalt __salt _strictann)
           _lazyann)
        _inherit

data HsStrictAnn = HsStrictAnn{hsStrictAnn_strictann ::
                               {-# UNPACK #-} !Int.Int32,
                               hsStrictAnn_lazyann :: Int.Int32,
                               hsStrictAnn_inherit :: {-# UNPACK #-} !Int.Int32}
                   deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON HsStrictAnn where
  toJSON
    (HsStrictAnn __field__strictann __field__lazyann __field__inherit)
    = Aeson.object
        ("strictann" .= __field__strictann :
           "lazyann" .= __field__lazyann :
             "inherit" .= __field__inherit : Prelude.mempty)

instance Thrift.ThriftStruct HsStrictAnn where
  buildStruct _proxy
    (HsStrictAnn __field__strictann __field__lazyann __field__inherit)
    = Thrift.genStruct _proxy
        (Thrift.genFieldPrim _proxy "strictann" (Thrift.getI32Type _proxy)
           1
           0
           (Thrift.genI32Prim _proxy)
           __field__strictann
           :
           Thrift.genFieldPrim _proxy "lazyann" (Thrift.getI32Type _proxy) 2 1
             (Thrift.genI32Prim _proxy)
             __field__lazyann
             :
             Thrift.genFieldPrim _proxy "inherit" (Thrift.getI32Type _proxy) 3 2
               (Thrift.genI32Prim _proxy)
               __field__inherit
               : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__strictann <- ST.newSTRef Default.def
            __field__lazyann <- ST.newSTRef Default.def
            __field__inherit <- ST.newSTRef Default.def
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__strictann
                                                                          _val
                                                                 2 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__lazyann
                                                                          _val
                                                                 3 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__inherit
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__strictann <- ST.readSTRef
                                                                    __field__strictann
                                             !__val__lazyann <- ST.readSTRef __field__lazyann
                                             !__val__inherit <- ST.readSTRef __field__inherit
                                             Prelude.pure
                                               (HsStrictAnn __val__strictann __val__lazyann
                                                  __val__inherit)
              _idMap
                = HashMap.fromList
                    [("strictann", 1), ("lazyann", 2), ("inherit", 3)]
            _parse 0)

instance DeepSeq.NFData HsStrictAnn where
  rnf
    (HsStrictAnn __field__strictann __field__lazyann __field__inherit)
    = DeepSeq.rnf __field__strictann `Prelude.seq`
        DeepSeq.rnf __field__lazyann `Prelude.seq`
          DeepSeq.rnf __field__inherit `Prelude.seq` ()

instance Default.Default HsStrictAnn where
  def = HsStrictAnn Default.def Default.def Default.def

instance Hashable.Hashable HsStrictAnn where
  hashWithSalt __salt (HsStrictAnn _strictann _lazyann _inherit)
    = Hashable.hashWithSalt
        (Hashable.hashWithSalt (Hashable.hashWithSalt __salt _strictann)
           _lazyann)
        _inherit

data HsLazyAnn = HsLazyAnn{hsLazyAnn_strictann ::
                           {-# UNPACK #-} !Int.Int32,
                           hsLazyAnn_lazyann :: Int.Int32, hsLazyAnn_inherit :: Int.Int32}
                 deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON HsLazyAnn where
  toJSON
    (HsLazyAnn __field__strictann __field__lazyann __field__inherit)
    = Aeson.object
        ("strictann" .= __field__strictann :
           "lazyann" .= __field__lazyann :
             "inherit" .= __field__inherit : Prelude.mempty)

instance Thrift.ThriftStruct HsLazyAnn where
  buildStruct _proxy
    (HsLazyAnn __field__strictann __field__lazyann __field__inherit)
    = Thrift.genStruct _proxy
        (Thrift.genFieldPrim _proxy "strictann" (Thrift.getI32Type _proxy)
           1
           0
           (Thrift.genI32Prim _proxy)
           __field__strictann
           :
           Thrift.genFieldPrim _proxy "lazyann" (Thrift.getI32Type _proxy) 2 1
             (Thrift.genI32Prim _proxy)
             __field__lazyann
             :
             Thrift.genFieldPrim _proxy "inherit" (Thrift.getI32Type _proxy) 3 2
               (Thrift.genI32Prim _proxy)
               __field__inherit
               : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__strictann <- ST.newSTRef Default.def
            __field__lazyann <- ST.newSTRef Default.def
            __field__inherit <- ST.newSTRef Default.def
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__strictann
                                                                          _val
                                                                 2 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__lazyann
                                                                          _val
                                                                 3 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__inherit
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__strictann <- ST.readSTRef
                                                                    __field__strictann
                                             !__val__lazyann <- ST.readSTRef __field__lazyann
                                             !__val__inherit <- ST.readSTRef __field__inherit
                                             Prelude.pure
                                               (HsLazyAnn __val__strictann __val__lazyann
                                                  __val__inherit)
              _idMap
                = HashMap.fromList
                    [("strictann", 1), ("lazyann", 2), ("inherit", 3)]
            _parse 0)

instance DeepSeq.NFData HsLazyAnn where
  rnf
    (HsLazyAnn __field__strictann __field__lazyann __field__inherit)
    = DeepSeq.rnf __field__strictann `Prelude.seq`
        DeepSeq.rnf __field__lazyann `Prelude.seq`
          DeepSeq.rnf __field__inherit `Prelude.seq` ()

instance Default.Default HsLazyAnn where
  def = HsLazyAnn Default.def Default.def Default.def

instance Hashable.Hashable HsLazyAnn where
  hashWithSalt __salt (HsLazyAnn _strictann _lazyann _inherit)
    = Hashable.hashWithSalt
        (Hashable.hashWithSalt (Hashable.hashWithSalt __salt _strictann)
           _lazyann)
        _inherit

data HsPrefixAnn = HsPrefixAnn{structprefixstrictann ::
                               {-# UNPACK #-} !Int.Int32,
                               structprefixlazyann :: Int.Int32, structprefixinherit :: Int.Int32}
                   deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON HsPrefixAnn where
  toJSON
    (HsPrefixAnn __field__strictann __field__lazyann __field__inherit)
    = Aeson.object
        ("strictann" .= __field__strictann :
           "lazyann" .= __field__lazyann :
             "inherit" .= __field__inherit : Prelude.mempty)

instance Thrift.ThriftStruct HsPrefixAnn where
  buildStruct _proxy
    (HsPrefixAnn __field__strictann __field__lazyann __field__inherit)
    = Thrift.genStruct _proxy
        (Thrift.genFieldPrim _proxy "strictann" (Thrift.getI32Type _proxy)
           1
           0
           (Thrift.genI32Prim _proxy)
           __field__strictann
           :
           Thrift.genFieldPrim _proxy "lazyann" (Thrift.getI32Type _proxy) 2 1
             (Thrift.genI32Prim _proxy)
             __field__lazyann
             :
             Thrift.genFieldPrim _proxy "inherit" (Thrift.getI32Type _proxy) 3 2
               (Thrift.genI32Prim _proxy)
               __field__inherit
               : [])
  parseStruct _proxy
    = ST.runSTT
        (do Prelude.return ()
            __field__strictann <- ST.newSTRef Default.def
            __field__lazyann <- ST.newSTRef Default.def
            __field__inherit <- ST.newSTRef Default.def
            let
              _parse _lastId
                = do _fieldBegin <- Trans.lift
                                      (Thrift.parseFieldBegin _proxy _lastId _idMap)
                     case _fieldBegin of
                       Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                 1 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__strictann
                                                                          _val
                                                                 2 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__lazyann
                                                                          _val
                                                                 3 | _type ==
                                                                       Thrift.getI32Type _proxy
                                                                     ->
                                                                     do !_val <- Trans.lift
                                                                                   (Thrift.parseI32
                                                                                      _proxy)
                                                                        ST.writeSTRef
                                                                          __field__inherit
                                                                          _val
                                                                 _ -> Trans.lift
                                                                        (Thrift.parseSkip _proxy
                                                                           _type
                                                                           (Prelude.Just _bool))
                                                               _parse _id
                       Thrift.FieldEnd -> do !__val__strictann <- ST.readSTRef
                                                                    __field__strictann
                                             !__val__lazyann <- ST.readSTRef __field__lazyann
                                             !__val__inherit <- ST.readSTRef __field__inherit
                                             Prelude.pure
                                               (HsPrefixAnn __val__strictann __val__lazyann
                                                  __val__inherit)
              _idMap
                = HashMap.fromList
                    [("strictann", 1), ("lazyann", 2), ("inherit", 3)]
            _parse 0)

instance DeepSeq.NFData HsPrefixAnn where
  rnf
    (HsPrefixAnn __field__strictann __field__lazyann __field__inherit)
    = DeepSeq.rnf __field__strictann `Prelude.seq`
        DeepSeq.rnf __field__lazyann `Prelude.seq`
          DeepSeq.rnf __field__inherit `Prelude.seq` ()

instance Default.Default HsPrefixAnn where
  def = HsPrefixAnn Default.def Default.def Default.def

instance Hashable.Hashable HsPrefixAnn where
  hashWithSalt __salt (HsPrefixAnn _strictann _lazyann _inherit)
    = Hashable.hashWithSalt
        (Hashable.hashWithSalt (Hashable.hashWithSalt __salt _strictann)
           _lazyann)
        _inherit

data HsUnion = HsUnion_left Int.Int32
             | HsUnion_right Int.Int32
             | HsUnion_EMPTY
               deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON HsUnion where
  toJSON (HsUnion_left __left) = Aeson.object ["left" .= __left]
  toJSON (HsUnion_right __right) = Aeson.object ["right" .= __right]
  toJSON HsUnion_EMPTY = Aeson.object []

instance Thrift.ThriftStruct HsUnion where
  buildStruct _proxy (HsUnion_left __left)
    = Thrift.genStruct _proxy
        [Thrift.genFieldPrim _proxy "left" (Thrift.getI32Type _proxy) 1 0
           (Thrift.genI32Prim _proxy)
           __left]
  buildStruct _proxy (HsUnion_right __right)
    = Thrift.genStruct _proxy
        [Thrift.genFieldPrim _proxy "right" (Thrift.getI32Type _proxy) 2 0
           (Thrift.genI32Prim _proxy)
           __right]
  buildStruct _proxy HsUnion_EMPTY = Thrift.genStruct _proxy []
  parseStruct _proxy
    = do _fieldBegin <- Thrift.parseFieldBegin _proxy 0 _idMap
         case _fieldBegin of
           Thrift.FieldBegin _type _id _bool -> do case _id of
                                                     1 | _type == Thrift.getI32Type _proxy ->
                                                         do _val <- Thrift.parseI32 _proxy
                                                            Thrift.parseStop _proxy
                                                            Prelude.return (HsUnion_left _val)
                                                     2 | _type == Thrift.getI32Type _proxy ->
                                                         do _val <- Thrift.parseI32 _proxy
                                                            Thrift.parseStop _proxy
                                                            Prelude.return (HsUnion_right _val)
                                                     _ -> do Thrift.parseSkip _proxy _type
                                                               Prelude.Nothing
                                                             Thrift.parseStop _proxy
                                                             Prelude.return HsUnion_EMPTY
           Thrift.FieldEnd -> Prelude.return HsUnion_EMPTY
    where
      _idMap = HashMap.fromList [("left", 1), ("right", 2)]

instance DeepSeq.NFData HsUnion where
  rnf (HsUnion_left __left) = DeepSeq.rnf __left
  rnf (HsUnion_right __right) = DeepSeq.rnf __right
  rnf HsUnion_EMPTY = ()

instance Default.Default HsUnion where
  def = HsUnion_EMPTY

instance Hashable.Hashable HsUnion where
  hashWithSalt __salt (HsUnion_left _left)
    = Hashable.hashWithSalt __salt (Hashable.hashWithSalt 1 _left)
  hashWithSalt __salt (HsUnion_right _right)
    = Hashable.hashWithSalt __salt (Hashable.hashWithSalt 2 _right)
  hashWithSalt __salt HsUnion_EMPTY
    = Hashable.hashWithSalt __salt (0 :: Prelude.Int)

data HsUnionNonEmptyAnn = HsUnionNonEmptyAnn_left Int.Int32
                        | HsUnionNonEmptyAnn_right Int.Int32
                          deriving (Prelude.Eq, Prelude.Show, Prelude.Ord)

instance Aeson.ToJSON HsUnionNonEmptyAnn where
  toJSON (HsUnionNonEmptyAnn_left __left)
    = Aeson.object ["left" .= __left]
  toJSON (HsUnionNonEmptyAnn_right __right)
    = Aeson.object ["right" .= __right]

instance Thrift.ThriftStruct HsUnionNonEmptyAnn where
  buildStruct _proxy (HsUnionNonEmptyAnn_left __left)
    = Thrift.genStruct _proxy
        [Thrift.genFieldPrim _proxy "left" (Thrift.getI32Type _proxy) 1 0
           (Thrift.genI32Prim _proxy)
           __left]
  buildStruct _proxy (HsUnionNonEmptyAnn_right __right)
    = Thrift.genStruct _proxy
        [Thrift.genFieldPrim _proxy "right" (Thrift.getI32Type _proxy) 2 0
           (Thrift.genI32Prim _proxy)
           __right]
  parseStruct _proxy
    = do _fieldBegin <- Thrift.parseFieldBegin _proxy 0 _idMap
         case _fieldBegin of
           Thrift.FieldBegin _type _id _bool -> do case _id of
                                                     1 | _type == Thrift.getI32Type _proxy ->
                                                         do _val <- Thrift.parseI32 _proxy
                                                            Thrift.parseStop _proxy
                                                            Prelude.return
                                                              (HsUnionNonEmptyAnn_left _val)
                                                     2 | _type == Thrift.getI32Type _proxy ->
                                                         do _val <- Thrift.parseI32 _proxy
                                                            Thrift.parseStop _proxy
                                                            Prelude.return
                                                              (HsUnionNonEmptyAnn_right _val)
                                                     _ -> Prelude.fail
                                                            ("unrecognized alternative for union 'HsUnionNonEmptyAnn': "
                                                               ++ Prelude.show _id)
           Thrift.FieldEnd -> Prelude.fail
                                "union 'HsUnionNonEmptyAnn' is empty"
    where
      _idMap = HashMap.fromList [("left", 1), ("right", 2)]

instance DeepSeq.NFData HsUnionNonEmptyAnn where
  rnf (HsUnionNonEmptyAnn_left __left) = DeepSeq.rnf __left
  rnf (HsUnionNonEmptyAnn_right __right) = DeepSeq.rnf __right

instance Default.Default HsUnionNonEmptyAnn where
  def = HsUnionNonEmptyAnn_left Default.def

instance Hashable.Hashable HsUnionNonEmptyAnn where
  hashWithSalt __salt (HsUnionNonEmptyAnn_left _left)
    = Hashable.hashWithSalt __salt (Hashable.hashWithSalt 1 _left)
  hashWithSalt __salt (HsUnionNonEmptyAnn_right _right)
    = Hashable.hashWithSalt __salt (Hashable.hashWithSalt 2 _right)

data HsEnum = HsEnum_ONE
            | HsEnum_TWO
            | HsEnum_THREE
            | HsEnum__UNKNOWN Prelude.Int
              deriving (Prelude.Eq, Prelude.Show)

instance Aeson.ToJSON HsEnum where
  toJSON = Aeson.toJSON . Thrift.fromThriftEnum

instance DeepSeq.NFData HsEnum where
  rnf __HsEnum = Prelude.seq __HsEnum ()

instance Default.Default HsEnum where
  def = HsEnum_ONE

instance Hashable.Hashable HsEnum where
  hashWithSalt _salt _val
    = Hashable.hashWithSalt _salt (Thrift.fromThriftEnum _val)

instance Thrift.ThriftEnum HsEnum where
  toThriftEnum 1 = HsEnum_ONE
  toThriftEnum 2 = HsEnum_TWO
  toThriftEnum 3 = HsEnum_THREE
  toThriftEnum val = HsEnum__UNKNOWN val
  fromThriftEnum HsEnum_ONE = 1
  fromThriftEnum HsEnum_TWO = 2
  fromThriftEnum HsEnum_THREE = 3
  fromThriftEnum (HsEnum__UNKNOWN val) = val
  allThriftEnumValues = [HsEnum_ONE, HsEnum_TWO, HsEnum_THREE]
  toThriftEnumEither 1 = Prelude.Right HsEnum_ONE
  toThriftEnumEither 2 = Prelude.Right HsEnum_TWO
  toThriftEnumEither 3 = Prelude.Right HsEnum_THREE
  toThriftEnumEither val
    = Prelude.Left
        ("toThriftEnumEither: not a valid identifier for enum HsEnum: " ++
           Prelude.show val)

instance Prelude.Ord HsEnum where
  compare = Function.on Prelude.compare Thrift.fromThriftEnum

data HsStructNoUnknownAnn = HsStructNoUnknownAnn_ONE
                          | HsStructNoUnknownAnn_TWO
                          | HsStructNoUnknownAnn_THREE
                            deriving (Prelude.Eq, Prelude.Show)

instance Aeson.ToJSON HsStructNoUnknownAnn where
  toJSON = Aeson.toJSON . Thrift.fromThriftEnum

instance DeepSeq.NFData HsStructNoUnknownAnn where
  rnf __HsStructNoUnknownAnn = Prelude.seq __HsStructNoUnknownAnn ()

instance Default.Default HsStructNoUnknownAnn where
  def = HsStructNoUnknownAnn_ONE

instance Hashable.Hashable HsStructNoUnknownAnn where
  hashWithSalt _salt _val
    = Hashable.hashWithSalt _salt (Thrift.fromThriftEnum _val)

instance Thrift.ThriftEnum HsStructNoUnknownAnn where
  toThriftEnum 1 = HsStructNoUnknownAnn_ONE
  toThriftEnum 2 = HsStructNoUnknownAnn_TWO
  toThriftEnum 3 = HsStructNoUnknownAnn_THREE
  toThriftEnum _val
    = Exception.throw
        (Thrift.ProtocolException
           ("toThriftEnum: not a valid identifier for enum HsStructNoUnknownAnn: "
              ++ Prelude.show _val))
  fromThriftEnum HsStructNoUnknownAnn_ONE = 1
  fromThriftEnum HsStructNoUnknownAnn_TWO = 2
  fromThriftEnum HsStructNoUnknownAnn_THREE = 3
  fromThriftEnum _val
    = Exception.throw
        (Thrift.ProtocolException
           ("fromThriftEnum: not a valid identifier for enum HsStructNoUnknownAnn: "
              ++ Prelude.show _val))
  allThriftEnumValues
    = [HsStructNoUnknownAnn_ONE, HsStructNoUnknownAnn_TWO,
       HsStructNoUnknownAnn_THREE]
  toThriftEnumEither 1 = Prelude.Right HsStructNoUnknownAnn_ONE
  toThriftEnumEither 2 = Prelude.Right HsStructNoUnknownAnn_TWO
  toThriftEnumEither 3 = Prelude.Right HsStructNoUnknownAnn_THREE
  toThriftEnumEither val
    = Prelude.Left
        ("toThriftEnumEither: not a valid identifier for enum HsStructNoUnknownAnn: "
           ++ Prelude.show val)

instance Prelude.Ord HsStructNoUnknownAnn where
  compare = Function.on Prelude.compare Thrift.fromThriftEnum

newtype HsStructPseudoenumAnn = HsStructPseudoenumAnn{unHsStructPseudoenumAnn
                                                      :: Int.Int32}
                                deriving (Prelude.Eq, Prelude.Show, DeepSeq.NFData, Prelude.Ord)

instance Hashable.Hashable HsStructPseudoenumAnn where
  hashWithSalt __salt (HsStructPseudoenumAnn __val)
    = Hashable.hashWithSalt __salt __val

instance Aeson.ToJSON HsStructPseudoenumAnn where
  toJSON (HsStructPseudoenumAnn __val) = Aeson.toJSON __val

hsStructPseudoenumAnn_ONE :: HsStructPseudoenumAnn
hsStructPseudoenumAnn_ONE = HsStructPseudoenumAnn 1

hsStructPseudoenumAnn_TWO :: HsStructPseudoenumAnn
hsStructPseudoenumAnn_TWO = HsStructPseudoenumAnn 2

hsStructPseudoenumAnn_THREE :: HsStructPseudoenumAnn
hsStructPseudoenumAnn_THREE = HsStructPseudoenumAnn 3