
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveit-core, moveit-resources-fanuc-moveit-config, moveit-ros-visualization, moveit-task-constructor-core, moveit-task-constructor-msgs, qt5, roscpp, rostest, rosunit, rviz }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-visualization";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_visualization/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "622423c27d6460f185928d2be034f85d25b69e7106618f742abd006b003ccf48";
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
