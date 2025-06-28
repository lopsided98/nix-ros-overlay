
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, cli11, geometry-msgs, gflags, gz-math-vendor, gz-msgs-vendor, gz-sim-vendor, gz-transport-vendor, launch, launch-ros, launch-testing, launch-testing-ament-cmake, pkg-config, rclcpp, rclcpp-components, rcpputils, ros-gz-interfaces, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-ros-gz-sim";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/ros_gz_sim/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "e72cb704f838030c3563c0fee794e0abd33520406385b670715d2fddbe51d01c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces cli11 geometry-msgs gflags gz-math-vendor gz-msgs-vendor gz-sim-vendor gz-transport-vendor launch launch-ros rclcpp rclcpp-components rcpputils ros-gz-interfaces std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = "Tools for using Gazebo Sim simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
