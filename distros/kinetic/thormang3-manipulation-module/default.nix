
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, geometry-msgs, libyamlcpp, robotis-controller-msgs, robotis-framework-common, robotis-math, roscpp, roslib, std-msgs, thormang3-kinematics-dynamics, thormang3-manipulation-module-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-manipulation-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_manipulation_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "25407f15de442a1ebc1879bd21e0477fa9f5baa42d2f97a93fdaaa18876b363f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen geometry-msgs libyamlcpp robotis-controller-msgs robotis-framework-common robotis-math roscpp roslib std-msgs thormang3-kinematics-dynamics thormang3-manipulation-module-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package describes basic function to control THORMANG3's upper-body.
    This module is based on position control.
    We provide joint space and task space control (forward kinematics, inverse kinematics).'';
    license = with lib.licenses; [ asl20 ];
  };
}
