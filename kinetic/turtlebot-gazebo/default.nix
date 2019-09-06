
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, kobuki-gazebo-plugins, turtlebot-bringup, catkin, turtlebot-description, robot-pose-ekf, robot-state-publisher, yocs-cmd-vel-mux, diagnostic-aggregator, depthimage-to-laserscan, turtlebot-navigation, xacro }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-gazebo";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_gazebo/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "197945ab613a6cff82f22e71e5b20504fb3bc6997457bdc0934a78f3810d28cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros kobuki-gazebo-plugins turtlebot-bringup turtlebot-navigation depthimage-to-laserscan robot-pose-ekf robot-state-publisher diagnostic-aggregator turtlebot-description yocs-cmd-vel-mux xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo launchers and worlds for TurtleBot simulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
