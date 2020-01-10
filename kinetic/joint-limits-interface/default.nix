
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp, rostest, rosunit, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-kinetic-joint-limits-interface";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/joint_limits_interface/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "278edecef58248e58f6d90bd35d943199460d213869b77178dd5d0a8685367df";
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
