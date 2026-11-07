
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, parallel-gripper-controller, roboplan-core, roboplan-example-models, roboplan-oink, roboplan-ros-examples, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-ros-franka";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/jazzy/roboplan_ros_franka/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "4aef104b051608782beb515212275de24fad4de8ddef35d2c4e853508f56b043";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-broadcaster joint-trajectory-controller launch launch-ros parallel-gripper-controller roboplan-core roboplan-example-models roboplan-oink roboplan-ros-examples roboplan-rrt roboplan-simple-ik roboplan-toppra robot-state-publisher topic-tools xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Franka arm ROS example for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
