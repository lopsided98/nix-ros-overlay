
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-reflector-referencing";
  version = "0.6.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/noetic/cob_reflector_referencing/0.6.10-1.tar.gz";
    name = "0.6.10-1.tar.gz";
    sha256 = "2688dd487f75963bb451eb924a87acd1aa91d608cfdbdf2345e77673c1426ed4";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a node broadcasting a tf frame based on reflector markers detected within sensor_msgs::LaserScan messages.
    It can be used to position/reference a robot wrt to the reflektor markers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
