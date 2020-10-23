
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, interactive-markers, message-generation, message-runtime, nav-msgs, rospy, sensor-msgs, std-msgs, turtlebot3-bringup, turtlebot3-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot3-example";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/kinetic/turtlebot3_example/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "d7af763b9e33128eaf3928a9e170a7db778fb4a53bebb59bf85c32b87f94ace5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs interactive-markers message-runtime nav-msgs rospy sensor-msgs std-msgs turtlebot3-bringup turtlebot3-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides four TurtleBot3 basic example include move using interactive marker, move and stop using LDS, move to goal position, move to custom routes. The interactions node is that you can control the TurtleBot3 front and back side or rotate to goal position. The obstacle node is that when the robot meets an obstacle, it stops. The patrol node is that TurtleBot3 move to custom route. There are 3 route(square, triangle, circle) in this package. You can add your route and move the TurtleBot3. The pointop node is that you can insert goal position include distance x-axis, y-axis and angluar z-axis.'';
    license = with lib.licenses; [ asl20 ];
  };
}
