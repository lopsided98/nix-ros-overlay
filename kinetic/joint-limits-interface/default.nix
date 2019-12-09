
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, urdf, hardware-interface, urdfdom, catkin, rosunit, roscpp, rostest }:
buildRosPackage {
  pname = "ros-kinetic-joint-limits-interface";
  version = "0.13.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/kinetic/joint_limits_interface/0.13.3-0.tar.gz";
    name = "0.13.3-0.tar.gz";
    sha256 = "278edecef58248e58f6d90bd35d943199460d213869b77178dd5d0a8685367df";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface urdfdom urdf roscpp ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ hardware-interface urdfdom urdf roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for enforcing joint limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
