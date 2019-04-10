
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-visualization, libyamlcpp, srdfdom, catkin, moveit-core, xacro }:
buildRosPackage {
  pname = "ros-lunar-moveit-setup-assistant";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_setup_assistant/0.9.12-1.tar.gz;
    sha256 = "2bfae4d14c49ba4ee756ef6f78a91e78551766caebfb9c1bbd31e11584266f5b";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-visualization moveit-core libyamlcpp srdfdom ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-visualization moveit-core libyamlcpp srdfdom xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt!'';
    #license = lib.licenses.BSD;
  };
}
