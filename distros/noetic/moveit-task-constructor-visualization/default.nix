
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-resources-fanuc-moveit-config, moveit-ros-visualization, moveit-task-constructor-core, moveit-task-constructor-msgs, qt5, roscpp, rostest, rosunit, rviz }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-visualization";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_visualization/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "b1ff5e97a5fff72a1c8b1033162f0a5a124e318148d069a2bbcab76032e020ae";
  };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  checkInputs = [ moveit-resources-fanuc-moveit-config rostest rosunit ];
  propagatedBuildInputs = [ moveit-core moveit-ros-visualization moveit-task-constructor-core moveit-task-constructor-msgs roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization tools for MoveIt Task Pipeline'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
