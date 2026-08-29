
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, forward-command-controller, joint-state-broadcaster, launch, launch-ros, mujoco-ros2-control, mujoco-ros2-control-msgs, pose-broadcaster, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-mujoco-ros2-control-demos";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/jazzy/mujoco_ros2_control_demos/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "34518a510a49b7f94b517f5512694561679e4b5f2b2798073cd6375bd9b6688f";
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
