
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-device-gazebo";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/melodic/qb_device_gazebo/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "0e95d49bf21c437ddc502e2d24e8699240fc79f39b4c2b34e22042810a36c98e";
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
