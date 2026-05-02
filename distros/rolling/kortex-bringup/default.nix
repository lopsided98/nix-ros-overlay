
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, kortex-description, kortex-driver, launch, launch-ros, parallel-gripper-controller, rclpy, robotiq-description, ros-gz-bridge, ros-gz-sim, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-kortex-bringup";
  version = "0.2.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/rolling/kortex_bringup/0.2.5-2.tar.gz";
    name = "0.2.5-2.tar.gz";
    sha256 = "15308c7e30757d4cb1bd60a21a3c1f2b430ab1ce2628ec2484908e390621873e";
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
