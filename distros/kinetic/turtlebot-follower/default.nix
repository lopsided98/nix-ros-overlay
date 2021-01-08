
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, dynamic-reconfigure, nodelet, roscpp, topic-tools, turtlebot-bringup, turtlebot-msgs, turtlebot-teleop, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-follower";
  version = "2.3.7";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_follower/2.3.7-0.tar.gz";
    name = "2.3.7-0.tar.gz";
    sha256 = "8e66b61205ec0894fd9743f373afe7a8cc2a28859b322ad5698cf4c0a4341ff4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ depth-image-proc dynamic-reconfigure nodelet roscpp topic-tools turtlebot-bringup turtlebot-msgs turtlebot-teleop visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Follower for the turtlebot. Follows humans and robots around by following the centroid of a box points in front of the turtlebot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
