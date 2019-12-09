
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, turtlebot3-bringup, geometry-msgs, turtlebot3-msgs, interactive-markers, message-runtime, std-msgs, actionlib, catkin, actionlib-msgs, visualization-msgs, rospy, message-generation, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-example";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_example/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "63fad5e017cfe753690448e92317a4e29e6da7af83c4a785e29cad5ebd56e0b0";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs turtlebot3-msgs interactive-markers std-msgs actionlib actionlib-msgs visualization-msgs rospy message-generation nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs turtlebot3-bringup turtlebot3-msgs interactive-markers message-runtime std-msgs actionlib actionlib-msgs visualization-msgs rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides four TurtleBot3 basic example include move using interactive marker, move and stop using LDS, move to goal position, move to custom routes. The interactions node is that you can control the TurtleBot3 front and back side or rotate to goal position. The obstacle node is that when the robot meets an obstacle, it stops. The patrol node is that TurtleBot3 move to custom route. There are 3 route(square, triangle, circle) in this package. You can add your route and move the TurtleBot3. The pointop node is that you can insert goal position include distance x-axis, y-axis and angluar z-axis.'';
    license = with lib.licenses; [ asl20 ];
  };
}
