
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hardware-interface, roscpp, rostest, urdf }:
buildRosPackage {
  pname = "ros-melodic-joint-limits-interface";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/melodic/joint_limits_interface/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "08352d1fcd557e7fcb0a0d26340f6161c8a895798358bc3e2b6a40f603ee9e27";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ hardware-interface roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface for enforcing joint limits.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
