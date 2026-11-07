
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, launch, launch-ros, parallel-gripper-controller, roboplan-core, roboplan-example-models, roboplan-oink, roboplan-ros-examples, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-ros-franka";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/lyrical/roboplan_ros_franka/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "a75aaa681a2fb1e58b1589c703dc1a9471cdbb65bbd1983f69daba5755e64070";
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
