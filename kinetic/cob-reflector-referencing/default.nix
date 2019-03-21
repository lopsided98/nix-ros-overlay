
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-reflector-referencing";
  version = "0.6.7";

  src = fetchurl {
    url = https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_reflector_referencing/0.6.7-0.tar.gz;
    sha256 = "25c2f9e25df999662c52d481f3277786a4d073962a7497b2c8fbefb61b7c4eb2";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node broadcasting a tf frame based on reflector markers detected within sensor_msgs::LaserScan messages.
    It can be used to position/reference a robot wrt to the reflektor markers.'';
    #license = lib.licenses.Apache 2.0;
  };
}
