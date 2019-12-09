
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, robotis-controller-msgs, boost, geometry-msgs, std-msgs, cmake-modules, roslib, manipulator-h-base-module-msgs, catkin, libyamlcpp, eigen, robotis-framework-common, roscpp, manipulator-h-kinematics-dynamics, robotis-math }:
buildRosPackage {
  pname = "ros-kinetic-manipulator-h-base-module";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/ROBOTIS-MANIPULATOR-H-release/archive/release/kinetic/manipulator_h_base_module/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "9f90090e6a8250a55cf595dbffaef1e0494a8f7f9798623d6de44b3f99402d30";
  };

  buildType = "catkin";
  buildInputs = [ robotis-controller-msgs boost geometry-msgs std-msgs cmake-modules roslib manipulator-h-base-module-msgs libyamlcpp eigen robotis-framework-common roscpp manipulator-h-kinematics-dynamics robotis-math ];
  propagatedBuildInputs = [ robotis-controller-msgs boost geometry-msgs std-msgs cmake-modules roslib manipulator-h-base-module-msgs libyamlcpp eigen robotis-framework-common roscpp manipulator-h-kinematics-dynamics robotis-math ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The manipulator_h_base_module package
    This package describes basic function to control ROBOTIS MANIPULATOR-H.
    This module is based on position control.
    We provides joint space and task space control (forward kinematics, inverse kinematics).'';
    license = with lib.licenses; [ asl20 ];
  };
}
