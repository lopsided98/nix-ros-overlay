
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libyamlcpp, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning, moveit-ros-visualization, ogre1_9, ompl, qt5, rosconsole, roscpp, rosunit, rviz, srdfdom, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-moveit-setup-assistant";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_setup_assistant/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "fb223adf91ce4a14e97e69be0d44bbf437dd11a6b981dd6b89b4d434e1776ee6";
  };

  buildType = "catkin";
  buildInputs = [ ogre1_9 ompl qt5.qtbase ];
  checkInputs = [ moveit-resources-panda-moveit-config rosunit ];
  propagatedBuildInputs = [ libyamlcpp moveit-core moveit-ros-planning moveit-ros-visualization rosconsole roscpp rviz srdfdom urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
