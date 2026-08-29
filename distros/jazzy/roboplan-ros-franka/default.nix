
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, mujoco-ros2-control, parallel-gripper-controller, roboplan, roboplan-example-models, roboplan-ros-examples, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-ros-franka";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/jazzy/roboplan_ros_franka/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "2d052b77e7eca2a87fbdf12b514ae6db8e6a1bbdf1632c01d0f0152dfd3f1ab3";
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
