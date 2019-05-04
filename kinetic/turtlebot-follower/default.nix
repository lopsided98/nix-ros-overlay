
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-bringup, depth-image-proc, turtlebot-msgs, catkin, nodelet, dynamic-reconfigure, topic-tools, turtlebot-teleop, visualization-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-follower";
  version = "2.3.7";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_apps-release/archive/release/kinetic/turtlebot_follower/2.3.7-0.tar.gz;
    sha256 = "8e66b61205ec0894fd9743f373afe7a8cc2a28859b322ad5698cf4c0a4341ff4";
  };

  buildInputs = [ depth-image-proc turtlebot-msgs roscpp visualization-msgs dynamic-reconfigure nodelet ];
  propagatedBuildInputs = [ turtlebot-bringup depth-image-proc turtlebot-msgs turtlebot-teleop dynamic-reconfigure topic-tools visualization-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Follower for the turtlebot. Follows humans and robots around by following the centroid of a box points in front of the turtlebot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
