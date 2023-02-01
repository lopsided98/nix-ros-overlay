
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, interactive-markers, message-generation, message-runtime, nav-msgs, rospy, sensor-msgs, std-msgs, turtlebot3-bringup, turtlebot3-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-example";
  version = "1.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "turtlebot3-release";
        rev = "release/noetic/turtlebot3_example/1.2.5-1";
        sha256 = "sha256-s+01xzaIyoB+ZYqvDup3zPc64trqrP7YVEwwQfBEpgE=";
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
