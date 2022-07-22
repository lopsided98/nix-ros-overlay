
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-device-gazebo";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/qb_device_gazebo/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "b73b101337d4d7159ce6a7698643636210c02f1f7657ed2e5b390c622df6edb9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros-control roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control custom dependencies for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
