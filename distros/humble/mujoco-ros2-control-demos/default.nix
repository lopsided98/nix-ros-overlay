
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, forward-command-controller, joint-state-broadcaster, launch, launch-ros, mujoco-ros2-control, mujoco-ros2-control-msgs, pose-broadcaster, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-mujoco-ros2-control-demos";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/humble/mujoco_ros2_control_demos/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "1a7c0a17a838ee6d1c1eacdad5be986d3b77815397d8466daf079d9b69dc24a3";
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
