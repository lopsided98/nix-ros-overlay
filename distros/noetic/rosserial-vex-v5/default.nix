
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-python }:
buildRosPackage {
  pname = "ros-noetic-rosserial-vex-v5";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_vex_v5/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "f165817a10a468231652f5f856aafd5fceff1e90f12ecbcc76ba8039a5362ddd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rosserial-client rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for the VEX Cortex V5 Robot Brain platform.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
