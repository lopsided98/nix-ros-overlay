
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, xacro, srdfdom, urdf, ogre1_9, catkin, moveit-resources, rosunit, moveit-ros-planning, qt5, libyamlcpp, rviz, moveit-ros-visualization, roscpp, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-moveit-setup-assistant";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_setup_assistant/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "02f195ff7a606823dccf0c07cc5a77f1abff255ed1849b796a6faa8d97b6ac2d";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core srdfdom urdf ogre1_9 moveit-ros-planning qt5.qtbase libyamlcpp rviz moveit-ros-visualization roscpp rosconsole ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ moveit-core xacro srdfdom urdf moveit-ros-planning libyamlcpp rviz moveit-ros-visualization roscpp rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
