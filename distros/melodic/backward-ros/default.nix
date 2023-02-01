
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, elfutils, roscpp }:
buildRosPackage {
  pname = "ros-melodic-backward-ros";
  version = "0.1.7";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pal-gbp";
        repo = "backward_ros-release";
        rev = "release/melodic/backward_ros/0.1.7-0";
        sha256 = "sha256-MolJFqHoajXdXEJBQR2LBa37fiXOh7IY1nSLt4/OMKw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ elfutils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The backward_ros package is a ros wrapper of backward-cpp from https://github.com/bombela/backward-cpp'';
    license = with lib.licenses; [ mit ];
  };
}
