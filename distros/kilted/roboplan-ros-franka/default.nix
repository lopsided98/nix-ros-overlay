
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, mujoco-ros2-control, parallel-gripper-controller, roboplan, roboplan-example-models, roboplan-ros-examples, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-franka";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_franka/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "974275cdd0250496096d93ea34a7d4948b603282f764ac8d31e6651271bebc79";
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
