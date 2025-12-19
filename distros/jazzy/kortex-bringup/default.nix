
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, gripper-controllers, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, kortex-description, kortex-driver, launch, launch-ros, rclpy, robotiq-description, ros-gz-bridge, ros-gz-sim, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kortex-bringup";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/jazzy/kortex_bringup/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "4ade721a1f796aa94eb3a37d180d76256f8d8b1e3b16030d16b1cd815d0bcea7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ controller-manager gripper-controllers joint-state-broadcaster joint-state-publisher joint-trajectory-controller kortex-description kortex-driver launch launch-ros rclpy robotiq-description ros-gz-bridge ros-gz-sim rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Launch file and run-time configurations, e.g. controllers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
