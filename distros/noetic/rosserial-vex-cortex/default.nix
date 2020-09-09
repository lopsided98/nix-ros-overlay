
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-vex-cortex";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_vex_cortex/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "cb71ece9413128967388628eb43d2a8105d2ff423ba06c4c32cb98b6f6935a1a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosserial-client rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Cortex/AVR platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
