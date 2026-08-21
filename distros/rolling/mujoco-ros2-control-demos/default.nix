
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, forward-command-controller, joint-state-broadcaster, launch, launch-ros, mujoco-ros2-control, mujoco-ros2-control-msgs, pose-broadcaster, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-mujoco-ros2-control-demos";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/rolling/mujoco_ros2_control_demos/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "8f0a51840fad0180ff8008f64270516584a7887a2f2800f2d4431d3e125710c4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager forward-command-controller joint-state-broadcaster launch launch-ros mujoco-ros2-control mujoco-ros2-control-msgs pose-broadcaster robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstration examples for mujoco_ros2_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
