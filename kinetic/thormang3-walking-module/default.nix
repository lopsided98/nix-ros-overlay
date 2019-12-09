
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, thormang3-balance-control, boost, geometry-msgs, sensor-msgs, eigen-conversions, std-msgs, thormang3-walking-module-msgs, catkin, cmake-modules, roslib, libyamlcpp, eigen, robotis-framework-common, roscpp, robotis-math, thormang3-kinematics-dynamics }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-walking-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_walking_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "deb67b0e6fc31b5f942a7355eb17114c249c0317ba76326f23a3c732e692cb76";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost sensor-msgs geometry-msgs eigen-conversions std-msgs thormang3-walking-module-msgs cmake-modules roslib roscpp libyamlcpp eigen robotis-framework-common thormang3-balance-control robotis-math thormang3-kinematics-dynamics ];
  propagatedBuildInputs = [ robotis-controller-msgs sensor-msgs boost geometry-msgs thormang3-balance-control eigen-conversions std-msgs thormang3-walking-module-msgs cmake-modules roslib libyamlcpp eigen robotis-framework-common roscpp robotis-math thormang3-kinematics-dynamics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a motion module for thormang3 walking.
    This package provides a online walking pattern generator for the thormang3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
