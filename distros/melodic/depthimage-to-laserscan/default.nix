
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gtest, image-geometry, image-transport, nodelet, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-depthimage-to-laserscan";
  version = "1.0.8";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "depthimage_to_laserscan-release";
        rev = "release/melodic/depthimage_to_laserscan/1.0.8-0";
        sha256 = "sha256-zklPnFlu3CesAV/Nn4VBxDh6s1nsRgshyE9r46A2ZA0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin gtest ];
  propagatedBuildInputs = [ dynamic-reconfigure image-geometry image-transport nodelet roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''depthimage_to_laserscan'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
