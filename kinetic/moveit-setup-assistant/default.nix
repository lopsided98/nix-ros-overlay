
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, xacro, srdfdom, urdf, catkin, moveit-resources, rosunit, moveit-ros-planning, libyamlcpp, rviz, moveit-ros-visualization, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-moveit-setup-assistant";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_setup_assistant/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "71cd748b0edaaca378bff6d6137ff8f974ebc41c9069ef5b9cb04a5eb3944f8b";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core srdfdom urdf moveit-ros-planning libyamlcpp rviz moveit-ros-visualization roscpp ];
  checkInputs = [ moveit-resources rosunit ];
  propagatedBuildInputs = [ moveit-core xacro srdfdom urdf moveit-ros-planning libyamlcpp rviz moveit-ros-visualization roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
