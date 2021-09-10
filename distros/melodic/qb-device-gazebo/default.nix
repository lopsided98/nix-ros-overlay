
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-gazebo";
  version = "2.2.1-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_gazebo/2.2.1-3.tar.gz";
    name = "2.2.1-3.tar.gz";
    sha256 = "cd16a082716023e9b759005851fa2e9d23171b082a6875d3258e7876f4a76f66";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros-control roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control custom dependencies for qbrobotics® devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
