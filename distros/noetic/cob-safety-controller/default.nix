
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-safety-controller";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_safety_controller/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "d5e0b1d61fa56e4a505a9af59e006ac52746f89c5e9d2c12a831688807935c71";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
