
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, boost, std-msgs, cmake-modules, catkin, thormang3-feet-ft-module-msgs, libyamlcpp, eigen, ati-ft-sensor, robotis-framework-common, roscpp, robotis-math, thormang3-kinematics-dynamics }:
buildRosPackage {
  pname = "ros-kinetic-thormang3-feet-ft-module";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-MPC-release/archive/release/kinetic/thormang3_feet_ft_module/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "3b50fa618507462f7fc8f3d91b8a73a28d4bb54d336d032118c1bf5d5bd4df00";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost std-msgs cmake-modules thormang3-feet-ft-module-msgs libyamlcpp ati-ft-sensor eigen robotis-framework-common roscpp robotis-math thormang3-kinematics-dynamics ];
  propagatedBuildInputs = [ robotis-controller-msgs boost std-msgs cmake-modules thormang3-feet-ft-module-msgs libyamlcpp eigen ati-ft-sensor robotis-framework-common roscpp robotis-math thormang3-kinematics-dynamics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a sensor module for force torque sensors on feet.'';
    license = with lib.licenses; [ asl20 ];
  };
}
