
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-hand-bridge, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-hand";
  version = "0.6.5";

  src = fetchurl {
    url = https://github.com/ipa320/cob_hand-release/archive/release/kinetic/cob_hand/0.6.5-0.tar.gz;
    sha256 = "ea51d99eefb08b3f77e65e28a406581945d9892cabfe0e10de7e43b1408c660e";
  };

  propagatedBuildInputs = [ cob-hand-bridge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand stack includes packages that provide access to the Care-O-bot hand through ROS serial.'';
    #license = lib.licenses.Apache 2.0;
  };
}
