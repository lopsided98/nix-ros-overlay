
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, parallel-gripper-controller, roboplan-core, roboplan-example-models, roboplan-oink, roboplan-ros-examples, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-franka";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_franka/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "e30db38632b7ccc14e476e0cffbc899a1a6558ab1af375a4a0320ffe41c852fd";
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
