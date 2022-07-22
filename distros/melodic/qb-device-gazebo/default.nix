
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-gazebo";
  version = "3.0.4-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_gazebo/3.0.4-3.tar.gz";
    name = "3.0.4-3.tar.gz";
    sha256 = "02b73c3b0ed2d31485b622f5bcaa2db7633752da7e366d2ffb1c47aab67a9388";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros-control roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control custom dependencies for qbrobotics® devices.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
