
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-resources, moveit-ros-planning, moveit-ros-visualization, libyamlcpp, srdfdom, catkin, moveit-core, xacro }:
buildRosPackage {
  pname = "ros-kinetic-moveit-setup-assistant";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_setup_assistant/0.9.15-0.tar.gz;
    sha256 = "a3dcccf6249967d15f72bc230df44e9974bbf888a86412d805ba4c12093e3b33";
  };

  checkInputs = [ moveit-resources ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-visualization moveit-core libyamlcpp srdfdom xacro ];
  nativeBuildInputs = [ moveit-ros-planning moveit-ros-visualization moveit-core libyamlcpp srdfdom catkin ];

  meta = {
    description = ''Generates a configuration package that makes it easy to use MoveIt!'';
    #license = lib.licenses.BSD;
  };
}
