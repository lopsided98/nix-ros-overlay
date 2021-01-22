
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp, rostest, rosunit, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-kinetic-joint-limits-interface";
  version = "0.13.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/joint_limits_interface/0.13.5-1.tar.gz";
    name = "0.13.5-1.tar.gz";
    sha256 = "101a22a1703ef8efd2d5455f36ee5cc0a28a338b0037c04bb578d9e9f5f80afb";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ hardware-interface roscpp urdf urdfdom ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for enforcing joint limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
