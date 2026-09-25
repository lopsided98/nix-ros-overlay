
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, parallel-gripper-controller, roboplan-core, roboplan-example-models, roboplan-oink, roboplan-ros-examples, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-franka";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_franka/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "7ef43041a929e1ae54e84215dae91aded020fcf7cb9af8ac0f641e9c026747c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-broadcaster joint-trajectory-controller parallel-gripper-controller roboplan-core roboplan-example-models roboplan-oink roboplan-ros-examples roboplan-rrt roboplan-simple-ik roboplan-toppra robot-state-publisher topic-tools xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Franka arm ROS example for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
