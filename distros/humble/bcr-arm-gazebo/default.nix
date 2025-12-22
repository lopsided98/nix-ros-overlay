
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-plugin, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, gripper-controllers, gz-ros2-control, python3Packages, rclcpp, ros-gz, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-humble-bcr-arm-gazebo";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/humble/bcr_arm_gazebo/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "418c56c9e9fd6b73a19315f05a99db188fb9da8e91ab1275513d2b0a8760857a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_ignition-plugin controller-manager gripper-controllers gz-ros2-control python3Packages.numpy rclcpp ros-gz ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers trajectory-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gazebo simulation and control scripts for bcr 7-dof robotic arm";
    license = with lib.licenses; [ asl20 ];
  };
}
