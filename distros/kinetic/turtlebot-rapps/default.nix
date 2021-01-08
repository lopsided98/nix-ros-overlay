
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, compressed-image-transport, kobuki-auto-docking, robot-pose-publisher, tf, topic-tools, turtlebot-bringup, turtlebot-follower, turtlebot-navigation, turtlebot-teleop, warehouse-ros, world-canvas-server }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-rapps";
  version = "2.3.7";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_rapps/2.3.7-0.tar.gz";
    name = "2.3.7-0.tar.gz";
    sha256 = "37e69eea152bfc4abe1d1a80e95e2143eb7614035397d66ae39880ba2c4e90cd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ compressed-image-transport kobuki-auto-docking robot-pose-publisher tf topic-tools turtlebot-bringup turtlebot-follower turtlebot-navigation turtlebot-teleop warehouse-ros world-canvas-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The core set of turtlebot 'app manager' apps are defined in this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
