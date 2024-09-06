
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, irobot-create-common-bringup, irobot-create-description, irobot-create-gz-bringup, irobot-create-gz-toolbox, irobot-create-msgs, irobot-create-nodes, irobot-create-toolbox, ros-gz-interfaces, ros-gz-sim, std-msgs, turtlebot4-description, turtlebot4-gz-gui-plugins, turtlebot4-gz-toolbox, turtlebot4-msgs, turtlebot4-navigation, turtlebot4-node, turtlebot4-viz }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-gz-bringup";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/jazzy/turtlebot4_gz_bringup/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "59d8f72335172ef1f5f6f84bdb20c768b8ec286d458c3fbb78f502427d7f554d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs irobot-create-common-bringup irobot-create-description irobot-create-gz-bringup irobot-create-gz-toolbox irobot-create-msgs irobot-create-nodes irobot-create-toolbox ros-gz-interfaces ros-gz-sim std-msgs turtlebot4-description turtlebot4-gz-gui-plugins turtlebot4-gz-toolbox turtlebot4-msgs turtlebot4-navigation turtlebot4-node turtlebot4-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TurtleBot 4 Gazebo Simulator bringup";
    license = with lib.licenses; [ asl20 ];
  };
}
