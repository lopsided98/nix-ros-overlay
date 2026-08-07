
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, mujoco-ros2-control, parallel-gripper-controller, roboplan, roboplan-example-models, roboplan-ros-examples, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-ros-franka";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/jazzy/roboplan_ros_franka/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "18b7af1859228c58d292a15998bb26a2ac3aaaa1d0090af6ffa7e0ec8328a860";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-broadcaster joint-trajectory-controller mujoco-ros2-control parallel-gripper-controller roboplan roboplan-example-models roboplan-ros-examples robot-state-publisher topic-tools xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Franka arm ROS example for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
