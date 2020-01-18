
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp, rostest, rosunit, urdf, urdfdom }:
buildRosPackage {
  pname = "ros-kinetic-joint-limits-interface";
  version = "0.13.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/joint_limits_interface/0.13.4-1.tar.gz";
    name = "0.13.4-1.tar.gz";
    sha256 = "42c1a2cfc42f096eb00dc5af396c03733a814dcf1d2c41248166a898019d905d";
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
