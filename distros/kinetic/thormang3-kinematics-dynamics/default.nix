
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, robotis-math, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-kinematics-dynamics";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_kinematics_dynamics/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "60085ae5fee76c539b7dd620bf0773b563c23c545a1da2dd5e1a01590d957d5e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules eigen robotis-math roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a kinematics and dynamics impletation for the thormang3.
    It can be used to calculate forward and inverse kinematics.'';
    license = with lib.licenses; [ asl20 ];
  };
}
