
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, kortex-description, kortex-driver, launch, launch-ros, parallel-gripper-controller, rclpy, robotiq-description, ros-gz-bridge, ros-gz-sim, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-kortex-bringup";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_bringup/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "16f02831292d7eed53944c949e070305e6e6e37a96a37b53f4872a7b09089928";
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
