
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-safety-controller";
  version = "0.6.11-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_safety_controller/0.6.11-1.tar.gz";
    name = "0.6.11-1.tar.gz";
    sha256 = "4be7cda7abf295591cc373314f4e05f2aec6e9d7d8798a381f49fc0b36ac7d3d";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
