
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp, rostest, urdf }:
buildRosPackage {
  pname = "ros-noetic-joint-limits-interface";
  version = "0.20.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/joint_limits_interface/0.20.0-1.tar.gz";
    name = "0.20.0-1.tar.gz";
    sha256 = "ebfdf25e96f817b174b2b7567492ed583b05fc0c932c00bc004baffbb400f8b0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for enforcing joint limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
