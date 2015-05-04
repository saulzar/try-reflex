{ haskellPackages, platform }:

with haskellPackages;

[
  squares
  ##############################################################################
  # Add general packages here                                                  #
  ##############################################################################



] ++ (if platform == "ghcjs" then [
  ##############################################################################
  # Add ghcjs-only packages here                                               #
  ##############################################################################
  reflex
  reflex-dom
  ghcjs-websockets
  # squares-client


] else []) ++ (if platform == "ghc" then [
  ##############################################################################
  # Add ghc-only packages here                                                 #
  ##############################################################################
  # squares-server

] else [])