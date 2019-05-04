
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, boost, geometry-msgs, manipulator-h-kinematics-dynamics, libyamlcpp, catkin, roscpp, roslib, robotis-math, manipulator-h-base-module-msgs, eigen, std-msgs, robotis-controller-msgs, robotis-framework-common }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h-base-module";
  version = "0.3.1";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_base_module/0.3.1-0.tar.gz;
    sha256 = "9f90090e6a8250a55cf595dbffaef1e0494a8f7f9798623d6de44b3f99402d30";
  };

  buildInputs = [ cmake-modules boost geometry-msgs manipulator-h-kinematics-dynamics libyamlcpp roscpp roslib robotis-math manipulator-h-base-module-msgs eigen std-msgs robotis-controller-msgs robotis-framework-common ];
  propagatedBuildInputs = [ cmake-modules boost geometry-msgs manipulator-h-kinematics-dynamics libyamlcpp roscpp roslib robotis-math manipulator-h-base-module-msgs eigen std-msgs robotis-controller-msgs robotis-framework-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulator_h_base_module package
    This package describes basic function to control ROBOTIS MANIPULATOR-H.
    This module is based on position control.
    We provides joint space and task space control (forward kinematics, inverse kinematics).'';
    license = with lib.licenses; [ asl20 ];
  };
}
