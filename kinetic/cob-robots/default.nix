
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-default-robot-config, cob-moveit-config, cob-hardware-config, catkin, cob-bringup, cob-default-robot-behavior }:
buildRosPackage {
  pname = "ros-kinetic-cob-robots";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_robots/0.6.11-0.tar.gz;
    sha256 = "c06ad870cc6f475a1e82a9fd445d043f1ef8f044b5143420312b23d7024f6de0";
  };

  propagatedBuildInputs = [ cob-default-robot-behavior cob-bringup cob-moveit-config cob-hardware-config cob-default-robot-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for hardware configuration as well as launch files for starting up the basic layer for operating Care-O-bot.'';
    #license = lib.licenses.Apache 2.0;
  };
}
