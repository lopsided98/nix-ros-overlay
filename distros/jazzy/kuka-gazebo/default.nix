
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, gz-ros2-control, joint-state-broadcaster, joint-trajectory-controller, launch-testing, launch-testing-ament-cmake, rclcpp, robot-state-publisher, ros-gz-bridge, ros-gz-sim, ros2run, std-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kuka-gazebo";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_gazebo/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "c9226d66715c8dbbf757f0d51cf17c29e0a20533bf7c554cfc7188a87e20f949";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ launch-testing launch-testing-ament-cmake ros2run ];
  propagatedBuildInputs = [ controller-manager gz-ros2-control joint-state-broadcaster joint-trajectory-controller rclcpp robot-state-publisher ros-gz-bridge ros-gz-sim std-msgs urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A helper package for Gazebo support with KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}
