
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, catkin, urdfdom, rostest, urdf, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-joint-limits-interface";
  version = "0.15.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/melodic/joint_limits_interface/0.15.1-0.tar.gz;
    sha256 = "c79c7fa6eaa2ccb35ed79b7dc6b125db16a98d298085a1fb1a2ed530e9817a64";
  };

  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ hardware-interface roscpp urdf urdfdom ];
  nativeBuildInputs = [ hardware-interface urdf catkin roscpp urdfdom ];

  meta = {
    description = ''Interface for enforcing joint limits.'';
    #license = lib.licenses.BSD;
  };
}
