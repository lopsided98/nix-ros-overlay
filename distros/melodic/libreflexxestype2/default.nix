
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libreflexxestype2";
  version = "0.8.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "KITrobotics";
        repo = "ipr_extern-release";
        rev = "release/melodic/libreflexxestype2/0.8.8-1";
        sha256 = "sha256-5S+b9O9WqVGkRQ19BvH+MW2/6aD/5aaG3jrnLTKe32I=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with ReflexxesTypeII implementation and header files'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
