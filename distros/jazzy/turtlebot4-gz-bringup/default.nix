
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, irobot-create-common-bringup, irobot-create-description, irobot-create-gz-bringup, irobot-create-gz-plugins, irobot-create-gz-toolbox, irobot-create-msgs, irobot-create-nodes, irobot-create-toolbox, ros-gz-interfaces, ros-gz-sim, std-msgs, turtlebot4-description, turtlebot4-gz-gui-plugins, turtlebot4-gz-toolbox, turtlebot4-msgs, turtlebot4-navigation, turtlebot4-node, turtlebot4-viz }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-gz-bringup";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/jazzy/turtlebot4_gz_bringup/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "d49d43839457da1bc8c9d43399a74b2455b2ea45c31fb04430f56f81fba261c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs irobot-create-common-bringup irobot-create-description irobot-create-gz-bringup irobot-create-gz-plugins irobot-create-gz-toolbox irobot-create-msgs irobot-create-nodes irobot-create-toolbox ros-gz-interfaces ros-gz-sim std-msgs turtlebot4-description turtlebot4-gz-gui-plugins turtlebot4-gz-toolbox turtlebot4-msgs turtlebot4-navigation turtlebot4-node turtlebot4-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TurtleBot 4 Gazebo Simulator bringup";
    license = with lib.licenses; [ asl20 ];
  };
}
