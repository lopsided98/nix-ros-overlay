
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-srvs, control-msgs, diagnostic-msgs, libntcan, libpcan, roscpp, schunk-libm5api, sensor-msgs, std-msgs, std-srvs, trajectory-msgs, urdf }:
buildRosPackage {
  pname = "ros-melodic-schunk-powercube-chain";
  version = "0.6.14-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "schunk_modular_robotics-release";
        rev = "release/melodic/schunk_powercube_chain/0.6.14-1";
        sha256 = "sha256-Bqgv2EXXzyTj4bgp8Pyf6AeyfOJABpGhtH/ln7pomEg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-srvs control-msgs diagnostic-msgs libntcan libpcan roscpp schunk-libm5api sensor-msgs std-msgs std-srvs trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This packages provides a configurable driver of a chain
  of Schunk powercubes. The powercube chain is configured
  through parameters. Most users will not directly interact
  with this package but with the corresponding launch files
  in other packages, e.g. schunk_bringup, cob_bringup, ...'';
    license = with lib.licenses; [ asl20 ];
  };
}
