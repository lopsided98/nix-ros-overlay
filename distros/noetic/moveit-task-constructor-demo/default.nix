
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, moveit-task-constructor-capabilities, moveit-task-constructor-core, roscpp, rosparam-shortcuts, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-demo";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_demo/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "b790f9cfb87e30b9daabe935b2337f5d47965aed106d69114021d3076efe127c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ moveit-core moveit-resources-panda-moveit-config moveit-ros-planning-interface moveit-task-constructor-capabilities moveit-task-constructor-core roscpp rosparam-shortcuts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''demo tasks illustrating various capabilities of MTC.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
