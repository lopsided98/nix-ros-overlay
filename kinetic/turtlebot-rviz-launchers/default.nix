
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlebot-bringup, catkin, rviz, turtlebot-teleop, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-rviz-launchers";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_interactions-release/archive/release/kinetic/turtlebot_rviz_launchers/2.3.1-0.tar.gz;
    sha256 = "2689dc90d9b07bc2d4d95ff71c6bce32169f9fe12f0957d1f1a0cf0322a01747";
  };

  propagatedBuildInputs = [ turtlebot-bringup rviz joint-state-publisher turtlebot-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launchers for visualizing TurtleBot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
