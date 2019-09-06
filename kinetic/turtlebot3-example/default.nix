
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, sensor-msgs, catkin, turtlebot3-msgs, nav-msgs, message-generation, turtlebot3-bringup, std-msgs, actionlib, rospy, interactive-markers, message-runtime, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-example";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_example/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "63fad5e017cfe753690448e92317a4e29e6da7af83c4a785e29cad5ebd56e0b0";
  };

  buildType = "catkin";
  buildInputs = [ actionlib-msgs sensor-msgs turtlebot3-msgs rospy nav-msgs message-generation interactive-markers actionlib std-msgs visualization-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib-msgs sensor-msgs turtlebot3-msgs std-msgs nav-msgs message-runtime interactive-markers actionlib rospy turtlebot3-bringup visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides four TurtleBot3 basic example include move using interactive marker, move and stop using LDS, move to goal position, move to custom routes. The interactions node is that you can control the TurtleBot3 front and back side or rotate to goal position. The obstacle node is that when the robot meets an obstacle, it stops. The patrol node is that TurtleBot3 move to custom route. There are 3 route(square, triangle, circle) in this package. You can add your route and move the TurtleBot3. The pointop node is that you can insert goal position include distance x-axis, y-axis and angluar z-axis.'';
    license = with lib.licenses; [ asl20 ];
  };
}
