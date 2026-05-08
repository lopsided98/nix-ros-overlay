
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, forward-command-controller, joint-state-broadcaster, mujoco-ros2-control, mujoco-ros2-control-msgs, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-mujoco-ros2-control-demos";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/humble/mujoco_ros2_control_demos/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "9e9ec8aa34d59301f8e59a9f1a85670a9383a81f5f6020d7a12d70383daeef54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager forward-command-controller joint-state-broadcaster mujoco-ros2-control mujoco-ros2-control-msgs robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstration examples for mujoco_ros2_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
