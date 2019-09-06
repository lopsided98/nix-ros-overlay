
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, moveit-ros-visualization, rosconsole, ogre1_9, xacro, libyamlcpp, srdfdom, catkin, urdf, qt5, rviz, moveit-core, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-moveit-setup-assistant";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_setup_assistant/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "02f195ff7a606823dccf0c07cc5a77f1abff255ed1849b796a6faa8d97b6ac2d";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning moveit-ros-visualization rosconsole ogre1_9 libyamlcpp srdfdom qt5.qtbase rviz moveit-core urdf roscpp ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-visualization rosconsole libyamlcpp srdfdom urdf moveit-core rviz roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
