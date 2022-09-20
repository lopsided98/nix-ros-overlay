
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp, rostest, urdf }:
buildRosPackage {
  pname = "ros-noetic-joint-limits-interface";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/joint_limits_interface/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "1b3ce53ea8cf91b6cf80e2785a94cd4c30dddd83f5624002b0644db28510e5dd";
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
