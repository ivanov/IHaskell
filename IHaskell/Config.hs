{-# LANGUAGE NoImplicitPrelude, OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
-- | Description : IPython configuration files are compiled-into IHaskell
module IHaskell.Config (ipython, notebook, console, qtconsole, customjs, notebookJavascript) where

import Data.String.Here
import ClassyPrelude

ipython :: String -> String
ipython executable = [template|config/ipython_config.py|]

notebook :: String
notebook = [template|config/ipython_notebook_config.py|]

console :: String
console = [template|config/ipython_console_config.py|]

qtconsole :: String
qtconsole = [template|config/ipython_qtconsole_config.py|]

customjs :: String
customjs = [template|config/custom.js|]

notebookJavascript :: [(FilePath, String)]
notebookJavascript = [("tooltip.js", [template|deps/tooltip.js|]),
                      ("codecell.js", [template|deps/codecell.js|])]
