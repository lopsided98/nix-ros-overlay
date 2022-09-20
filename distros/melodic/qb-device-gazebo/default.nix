
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-gazebo";
  version = "3.0.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_gazebo/3.0.5-1.tar.gz";
    name = "3.0.5-1.tar.gz";
    sha256 = "a45cbe6a017aeb024ff0c019e5bd6d39979e3545cadd8e71eec07cf1036f3804";
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
