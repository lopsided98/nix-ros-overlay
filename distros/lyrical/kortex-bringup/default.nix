
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, kortex-description, kortex-driver, launch, launch-ros, parallel-gripper-controller, rclpy, robotiq-description, ros-gz-bridge, ros-gz-sim, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-lyrical-kortex-bringup";
  version = "0.2.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/lyrical/kortex_bringup/0.2.5-4.tar.gz";
    name = "0.2.5-4.tar.gz";
    sha256 = "85cfc31c96928f74c68d0096a59c9fd6549d5442e83e55ca9869593f4cf48558";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ controller-manager joint-state-broadcaster joint-state-publisher joint-trajectory-controller kortex-description kortex-driver launch launch-ros parallel-gripper-controller rclpy robotiq-description ros-gz-bridge ros-gz-sim rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Launch file and run-time configurations, e.g. controllers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
