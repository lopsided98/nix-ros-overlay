
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, interactive-markers, joint-state-publisher, moveit-core, moveit-msgs, moveit-ros-planning-interface, reach, robot-state-publisher, ros-industrial-cmake-boilerplate, rostest, sensor-msgs, tf2-eigen, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-reach-ros";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/reach_ros-release/archive/release/noetic/reach_ros/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "cc4192fab4a70ea56d609fee8984a830632ac22833509510d15b40d666d70567";
  };

  buildType = "catkin";
  buildInputs = [ catkin ros-industrial-cmake-boilerplate ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ interactive-markers joint-state-publisher moveit-core moveit-msgs moveit-ros-planning-interface reach robot-state-publisher sensor-msgs tf2-eigen visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The reach_ros package'';
    license = with lib.licenses; [ asl20 ];
  };
}
