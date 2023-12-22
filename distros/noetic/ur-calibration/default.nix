
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, roscpp, rosunit, ur-client-library, ur-robot-driver, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-ur-calibration";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/UniversalRobots/Universal_Robots_ROS_Driver-release/archive/release/noetic/ur_calibration/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "b9e73509f4c590a8908cc9473a6e53dd0be9161ce24fbf33f6dd3b4be904256d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ eigen roscpp ur-client-library ur-robot-driver yaml-cpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF'';
    license = with lib.licenses; [ asl20 ];
  };
}
