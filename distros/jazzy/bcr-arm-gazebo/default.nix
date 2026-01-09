
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, gripper-controllers, gz-ros2-control, python3Packages, rclcpp, ros-gz, ros-gz-bridge, ros-gz-image, ros-gz-sim, ros2-control, ros2-controllers, trajectory-msgs, xacro }:
buildRosPackage {
  pname = "ros-jazzy-bcr-arm-gazebo";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/bcr_arm-release/archive/release/jazzy/bcr_arm_gazebo/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "4217b2f43bf9e30b9cb5d232280d2716258fd0ba417973dab637af3ba3557bc9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager gripper-controllers gz-ros2-control python3Packages.numpy rclcpp ros-gz ros-gz-bridge ros-gz-image ros-gz-sim ros2-control ros2-controllers trajectory-msgs xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gazebo simulation and control scripts for bcr 7-dof robotic arm";
    license = with lib.licenses; [ asl20 ];
  };
}
