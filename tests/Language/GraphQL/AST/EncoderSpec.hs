{-# LANGUAGE OverloadedStrings #-}
module Language.GraphQL.AST.EncoderSpec
    ( spec
    ) where

import Language.GraphQL.AST (Value(..))
import Language.GraphQL.AST.Encoder
import Test.Hspec ( Spec
                  , describe
                  , it
                  , shouldBe
                  )

spec :: Spec
spec = describe "value" $ do
    it "escapes \\" $
        value minified (String "\\") `shouldBe` "\"\\\\\""
    it "escapes quotes" $
        value minified (String "\"") `shouldBe` "\"\\\"\""
