
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ati-ft-sensor, boost, catkin, cmake-modules, eigen, libyamlcpp, robotis-controller-msgs, robotis-framework-common, robotis-math, roscpp, std-msgs, thormang3-feet-ft-module-msgs, thormang3-kinematics-dynamics }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-feet-ft-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_feet_ft_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "3b50fa618507462f7fc8f3d91b8a73a28d4bb54d336d032118c1bf5d5bd4df00";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ati-ft-sensor boost cmake-modules eigen libyamlcpp robotis-controller-msgs robotis-framework-common robotis-math roscpp std-msgs thormang3-feet-ft-module-msgs thormang3-kinematics-dynamics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a sensor module for force torque sensors on feet.'';
    license = with lib.licenses; [ asl20 ];
  };
}
