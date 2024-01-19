
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-fake-controller-manager, moveit-resources-panda-moveit-config, moveit-ros-planning-interface, moveit-task-constructor-capabilities, moveit-task-constructor-core, roscpp, rosparam-shortcuts, rostest }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-demo";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_demo/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "e966c8f6c8685771eb487d63f4065a9465c25f5adfab7ba7457c919a61bee682";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-fake-controller-manager rostest ];
  propagatedBuildInputs = [ moveit-core moveit-resources-panda-moveit-config moveit-ros-planning-interface moveit-task-constructor-capabilities moveit-task-constructor-core roscpp rosparam-shortcuts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''demo tasks illustrating various capabilities of MTC.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
