
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp, rostest, urdf }:
buildRosPackage {
  pname = "ros-noetic-joint-limits-interface";
  version = "0.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/joint_limits_interface/0.19.1-1.tar.gz";
    name = "0.19.1-1.tar.gz";
    sha256 = "3296607b2529930512833aa87938a4535861d98f86f08fdf9a98ad732cd41487";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for enforcing joint limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
