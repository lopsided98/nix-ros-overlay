
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, moveit-core, moveit-resources, moveit-ros-planning, moveit-ros-visualization, ogre1_9, qt5, rosconsole, roscpp, rosunit, rviz, srdfdom, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-moveit-setup-assistant";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_setup_assistant/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "1e23726919235ba613a9a764245094d633e4f26d15e86a3359ea85fc2644cac5";
  };

  buildType = "catkin";
  buildInputs = [ ogre1_9 qt5.qtbase ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ libyamlcpp moveit-core moveit-ros-planning moveit-ros-visualization rosconsole roscpp rviz srdfdom urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
