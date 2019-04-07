
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, geometry-msgs, libyamlcpp, catkin, roscpp, thormang3-kinematics-dynamics, roslib, robotis-math, eigen, std-msgs, robotis-controller-msgs, thormang3-manipulation-module-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-manipulation-module";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_manipulation_module/0.2.0-0.tar.gz;
    sha256 = "25407f15de442a1ebc1879bd21e0477fa9f5baa42d2f97a93fdaaa18876b363f";
  };

  buildInputs = [ boost cmake-modules geometry-msgs libyamlcpp roscpp thormang3-kinematics-dynamics roslib robotis-math eigen std-msgs robotis-controller-msgs thormang3-manipulation-module-msgs robotis-framework-common ];
  propagatedBuildInputs = [ boost cmake-modules geometry-msgs libyamlcpp roscpp thormang3-kinematics-dynamics roslib robotis-math eigen std-msgs robotis-controller-msgs thormang3-manipulation-module-msgs robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package describes basic function to control THORMANG3's upper-body.
    This module is based on position control.
    We provide joint space and task space control (forward kinematics, inverse kinematics).'';
    #license = lib.licenses.Apache 2.0;
  };
}
