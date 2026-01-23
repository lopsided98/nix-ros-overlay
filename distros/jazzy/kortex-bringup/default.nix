
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, controller-manager, gripper-controllers, joint-state-broadcaster, joint-state-publisher, joint-trajectory-controller, kortex-description, kortex-driver, launch, launch-ros, rclpy, robotiq-description, ros-gz-bridge, ros-gz-sim, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kortex-bringup";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_kortex-release/archive/release/jazzy/kortex_bringup/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "8934b9a4348fbf309df17f141d19b93075c25c687beff5b44131b4cbe5512c91";
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
