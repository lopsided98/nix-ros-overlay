
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, gz-ros2-control, moveit-ros-planning-interface, moveit-visual-tools, robot-state-publisher, ros-gz-bridge, ros-gz-sim, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-gazebo";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_gazebo/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f22d677dfb5a2c16de3e7da4f802dbc1d613abd1a09e43459693e52f5669ff15";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager gz-ros2-control moveit-ros-planning-interface moveit-visual-tools robot-state-publisher ros-gz-bridge ros-gz-sim urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A helper package for Gazebo support with KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
