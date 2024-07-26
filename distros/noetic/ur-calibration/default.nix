
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, rosunit, ur-client-library, ur-robot-driver, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-ur-calibration";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/noetic/ur_calibration/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "01019141950e48408b34786c7cef0b98456edaa65f3d41c9bcdda36948a8895e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen roscpp ur-client-library ur-robot-driver yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF";
    license = with lib.licenses; [ asl20 ];
  };
}
