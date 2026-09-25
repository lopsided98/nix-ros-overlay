
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, parallel-gripper-controller, roboplan-core, roboplan-example-models, roboplan-oink, roboplan-ros-examples, roboplan-rrt, roboplan-simple-ik, roboplan-toppra, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-ros-franka";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/jazzy/roboplan_ros_franka/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "682fb906b2349e6e14dafdd5aff4a5e75a35ebdb6045e23f0c46306b65e64ee4";
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
