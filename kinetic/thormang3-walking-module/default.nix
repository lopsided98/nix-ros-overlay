
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake-modules, geometry-msgs, libyamlcpp, sensor-msgs, catkin, robotis-framework-common, thormang3-kinematics-dynamics, robotis-controller-msgs, roslib, robotis-math, thormang3-balance-control, eigen, std-msgs, eigen-conversions, roscpp, thormang3-walking-module-msgs }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-walking-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_walking_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "deb67b0e6fc31b5f942a7355eb17114c249c0317ba76326f23a3c732e692cb76";
  };

  buildType = "catkin";
  buildInputs = [ boost cmake-modules thormang3-walking-module-msgs libyamlcpp geometry-msgs sensor-msgs roscpp thormang3-kinematics-dynamics roslib thormang3-balance-control robotis-math eigen std-msgs eigen-conversions robotis-controller-msgs robotis-framework-common ];
  propagatedBuildInputs = [ cmake-modules boost geometry-msgs libyamlcpp sensor-msgs robotis-framework-common roscpp thormang3-kinematics-dynamics roslib thormang3-balance-control robotis-math eigen std-msgs eigen-conversions robotis-controller-msgs thormang3-walking-module-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a motion module for thormang3 walking.
    This package provides a online walking pattern generator for the thormang3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
