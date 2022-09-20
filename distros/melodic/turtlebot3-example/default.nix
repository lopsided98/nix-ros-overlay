
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, interactive-markers, message-generation, message-runtime, nav-msgs, rospy, sensor-msgs, std-msgs, turtlebot3-bringup, turtlebot3-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-example";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/turtlebot3-release/archive/release/melodic/turtlebot3_example/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "fe2c517697cd5f64936641dfd194134d56de30dade5e46c621473451115438fb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs interactive-markers message-runtime nav-msgs rospy sensor-msgs std-msgs turtlebot3-bringup turtlebot3-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides four TurtleBot3 basic example include move using interactive marker, move and stop using LDS, move to goal position, move to custom routes. The interactions node is that you can control the TurtleBot3 front and back side or rotate to goal position. The obstacle node is that when the robot meets an obstacle, it stops. The patrol node is that TurtleBot3 move to custom route. There are 3 route(square, triangle, circle) in this package. You can add your route and move the TurtleBot3. The pointop node is that you can insert goal position include distance x-axis, y-axis and angluar z-axis.'';
    license = with lib.licenses; [ asl20 ];
  };
}
