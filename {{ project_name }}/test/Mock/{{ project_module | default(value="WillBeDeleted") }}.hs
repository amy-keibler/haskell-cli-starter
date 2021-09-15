{% if has_mocks -%}
{-# LANGUAGE DataKinds             #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE GADTs                 #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE RankNTypes            #-}
{-# LANGUAGE ScopedTypeVariables   #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE UndecidableInstances  #-}
{-# OPTIONS_GHC -Wno-orphans       #-}
module Mock.{{ project_module }} where

import {{ project_module }}

import Test.HMock

import Relude

-- For simple implementations, do something like
-- makeMockable ''Monad{{ project_module }}

-- For more complex implementations, manually implement
-- instance (Typeable m, MonadIO m, MonadMask m) => Monad{{ project_module }} (MockT m) where
--   methodToMock = mockDefaultlessMethod MethodToMock
--
-- instance Mockable Monad{{ project_module }}
-- instance MockableBase Monad{{ project_module }} where
--   -- this instance is complicated and unique to the required mock
{%- endif %}
