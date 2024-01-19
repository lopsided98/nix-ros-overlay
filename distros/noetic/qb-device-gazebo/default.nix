
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-device-gazebo";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_gazebo/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "2ab8b73d1cf2bf599627327e8282278f3f995210091710dfa22ff42db5b4aaee";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo-ros-control roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control custom dependencies for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
