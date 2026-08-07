
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, joint-trajectory-controller, parallel-gripper-controller, roboplan, roboplan-example-models, roboplan-ros-examples, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-ros-franka";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/lyrical/roboplan_ros_franka/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "7c53b4e256c200119313d17120b9319a63c4d27ce9586b504d8e6f8371c3cdbb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-broadcaster joint-trajectory-controller parallel-gripper-controller roboplan roboplan-example-models roboplan-ros-examples robot-state-publisher topic-tools xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Franka arm ROS example for RoboPlan.";
    license = with lib.licenses; [ mit ];
  };
}
