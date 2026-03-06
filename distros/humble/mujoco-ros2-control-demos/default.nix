
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-broadcaster, mujoco-ros2-control, mujoco-ros2-control-msgs, position-controllers, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-mujoco-ros2-control-demos";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mujoco_ros2_control-release/archive/release/humble/mujoco_ros2_control_demos/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "db78a7ba197188faf42c6f79190bcd1614f08b853b22bf1d915b8204debfe6e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-broadcaster mujoco-ros2-control mujoco-ros2-control-msgs position-controllers robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Demonstration examples for mujoco_ros2_control package";
    license = with lib.licenses; [ asl20 ];
  };
}
