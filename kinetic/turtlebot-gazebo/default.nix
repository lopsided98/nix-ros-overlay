
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, turtlebot-bringup, kobuki-gazebo-plugins, turtlebot-navigation, catkin, turtlebot-description, robot-pose-ekf, robot-state-publisher, diagnostic-aggregator, depthimage-to-laserscan, yocs-cmd-vel-mux, xacro }:
buildRosPackage {
  pname = "ros-kinetic-turtlebot-gazebo";
  version = "2.2.3";

  src = fetchurl {
    url = https://github.com/turtlebot-release/turtlebot_simulator-release/archive/release/kinetic/turtlebot_gazebo/2.2.3-0.tar.gz;
    sha256 = "197945ab613a6cff82f22e71e5b20504fb3bc6997457bdc0934a78f3810d28cf";
  };

  propagatedBuildInputs = [ gazebo-ros turtlebot-bringup kobuki-gazebo-plugins depthimage-to-laserscan robot-pose-ekf robot-state-publisher yocs-cmd-vel-mux diagnostic-aggregator turtlebot-description turtlebot-navigation xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo launchers and worlds for TurtleBot simulation'';
    #license = lib.licenses.BSD;
  };
}
