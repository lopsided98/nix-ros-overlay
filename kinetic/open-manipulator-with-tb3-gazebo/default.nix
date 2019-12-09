
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, urdf, catkin, gazebo-ros-control, gazebo-ros }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-with-tb3-gazebo";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3_simulations-release/archive/release/kinetic/open_manipulator_with_tb3_gazebo/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "753545782928a2357e67b0636af38f2cafc42dc8e8e2b7f8f6e9798e8cad3a6c";
  };

  buildType = "catkin";
  buildInputs = [ xacro controller-manager urdf gazebo-ros-control gazebo-ros ];
  propagatedBuildInputs = [ xacro controller-manager urdf gazebo-ros-control gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Simulation package using gazebo for OpenManipulator with TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
