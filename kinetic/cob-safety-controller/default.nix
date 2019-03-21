
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-safety-controller";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_safety_controller/0.6.7-0.tar.gz;
    sha256 = "d043fff21fb92b63813bb510ba78662f6c301b5c12ab99d8f2ae1626aa0c517e";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    #license = lib.licenses.Apache 2.0;
  };
}
