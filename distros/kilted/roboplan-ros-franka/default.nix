
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, mujoco-ros2-control, parallel-gripper-controller, roboplan, roboplan-example-models, roboplan-ros-examples, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-franka";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_franka/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "ec040bf2eaf2995f75edaad3b644b47f4c569bc1c261ea93b8addc204539ad2f";
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
