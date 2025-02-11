{
  self,
  inputs,
  outputs,
  stateVersion,
  username,
  system,
  ...
}:
let
  helpers = import ./helpers.nix {
    inherit
      self
      inputs
      outputs
      stateVersion
      username
      system
      ;
    };
in
{
  inherit (helpers) mkHome mkHost forAllSystems;
}
