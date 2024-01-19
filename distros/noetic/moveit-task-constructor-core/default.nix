
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, moveit-commander, moveit-core, moveit-planners, moveit-resources-fanuc-moveit-config, moveit-ros-planning, moveit-ros-planning-interface, moveit-task-constructor-msgs, python3Packages, roscpp, roslint, rostest, rosunit, rviz-marker-tools, tf2-eigen, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-task-constructor-core";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_task_constructor-release/archive/release/noetic/moveit_task_constructor_core/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "01598da4efb24e585c22448de99ae830a2b53af3f37d0f8ef0218631a21ee36f";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools roslint ];
  checkInputs = [ moveit-commander moveit-planners moveit-resources-fanuc-moveit-config rostest rosunit ];
  propagatedBuildInputs = [ geometry-msgs moveit-core moveit-ros-planning moveit-ros-planning-interface moveit-task-constructor-msgs roscpp rviz-marker-tools tf2-eigen visualization-msgs ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''MoveIt Task Pipeline'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
