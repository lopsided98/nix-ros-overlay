
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, eigen, eigen-conversions, geometry-msgs, libyamlcpp, robotis-controller-msgs, robotis-framework-common, robotis-math, roscpp, roslib, sensor-msgs, std-msgs, thormang3-balance-control, thormang3-kinematics-dynamics, thormang3-walking-module-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-walking-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_walking_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "deb67b0e6fc31b5f942a7355eb17114c249c0317ba76326f23a3c732e692cb76";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost cmake-modules eigen eigen-conversions geometry-msgs libyamlcpp robotis-controller-msgs robotis-framework-common robotis-math roscpp roslib sensor-msgs std-msgs thormang3-balance-control thormang3-kinematics-dynamics thormang3-walking-module-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a motion module for thormang3 walking.
    This package provides a online walking pattern generator for the thormang3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
