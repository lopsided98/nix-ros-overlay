
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-resources, moveit-ros-visualization, rosconsole, ogre1_9, xacro, libyamlcpp, srdfdom, catkin, urdf, qt5, rviz, moveit-core, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-moveit-setup-assistant";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_setup_assistant/1.0.1-0.tar.gz;
    sha256 = "e7aa9ebbf17b4f51a4cf38ba92f45430497c1da9cdddd0736706f2ef757d01ab";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-visualization rosconsole ogre1_9 libyamlcpp srdfdom qt5.qtbase rviz moveit-core urdf roscpp ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-visualization rosconsole libyamlcpp srdfdom rviz moveit-core urdf roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
