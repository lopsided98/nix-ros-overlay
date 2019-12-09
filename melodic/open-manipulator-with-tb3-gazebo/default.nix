
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, controller-manager, urdf, catkin, gazebo-ros-control, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-gazebo";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3_simulations-release/archive/release/melodic/open_manipulator_with_tb3_gazebo/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "b78cf601ef185042b96bd253b246286853ed1a7d47f76c58f733f02213e64c5c";
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
