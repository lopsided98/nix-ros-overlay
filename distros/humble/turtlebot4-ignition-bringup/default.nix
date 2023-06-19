
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, irobot-create-common-bringup, irobot-create-description, irobot-create-ignition-bringup, irobot-create-ignition-toolbox, irobot-create-msgs, irobot-create-nodes, irobot-create-toolbox, ros-ign-bridge, ros-ign-gazebo, ros-ign-interfaces, std-msgs, turtlebot4-description, turtlebot4-ignition-gui-plugins, turtlebot4-ignition-toolbox, turtlebot4-msgs, turtlebot4-navigation, turtlebot4-node, turtlebot4-viz }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-ignition-bringup";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_simulator-release/archive/release/humble/turtlebot4_ignition_bringup/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e206559248407574ba299b442b1d8a3113958640b55245872df7fce60319f570";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs irobot-create-common-bringup irobot-create-description irobot-create-ignition-bringup irobot-create-ignition-toolbox irobot-create-msgs irobot-create-nodes irobot-create-toolbox ros-ign-bridge ros-ign-gazebo ros-ign-interfaces std-msgs turtlebot4-description turtlebot4-ignition-gui-plugins turtlebot4-ignition-toolbox turtlebot4-msgs turtlebot4-navigation turtlebot4-node turtlebot4-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TurtleBot 4 Ignition Simulator bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
