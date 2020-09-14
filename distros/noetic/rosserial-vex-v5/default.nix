
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-vex-v5";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_vex_v5/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "1cfaa195247011089ae970f7a89c8a2280b3c138952e25bbd3e0f53ee999f306";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rospy rosserial-client rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for the VEX Cortex V5 Robot Brain platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
