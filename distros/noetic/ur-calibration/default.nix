
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, rosunit, ur-client-library, ur-robot-driver, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-ur-calibration";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/noetic/ur_calibration/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "a582ee778834c844163937f4c4e75e6f01eb2fcf71505750612d92d9a72433d4";
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
