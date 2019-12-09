
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-teleop, turtlebot-follower, turtlebot-navigation, tf, catkin, kobuki-auto-docking, robot-pose-publisher, warehouse-ros, topic-tools, compressed-image-transport, world-canvas-server, turtlebot-bringup }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-rapps";
  version = "2.3.7";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_rapps/2.3.7-0.tar.gz";
    name = "2.3.7-0.tar.gz";
    sha256 = "37e69eea152bfc4abe1d1a80e95e2143eb7614035397d66ae39880ba2c4e90cd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ turtlebot-teleop turtlebot-follower tf turtlebot-navigation kobuki-auto-docking robot-pose-publisher warehouse-ros compressed-image-transport topic-tools world-canvas-server turtlebot-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The core set of turtlebot 'app manager' apps are defined in this package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
