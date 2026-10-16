
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, ament-lint-auto, ament-lint-common, builtin-interfaces, cli11, geometry-msgs, gflags, gz-math-vendor, gz-msgs-vendor, gz-sim-vendor, gz-transport-vendor, launch, launch-ros, launch-testing, launch-testing-ament-cmake, pkg-config, python3Packages, rclcpp, rclcpp-action, rclcpp-components, rclpy, rcpputils, ros-gz-bridge, ros-gz-interfaces, ros2pkg, simulation-interfaces, std-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-ros-gz-sim";
  version = "4.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_gz_sim/4.0.2-1.tar.gz";
    name = "4.0.2-1.tar.gz";
    sha256 = "d8d6a52f6ab9bffe5b68277efd267d40b75ed726a397c0812664374bf76eb22e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python cli11 pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-testing launch-testing-ament-cmake rclpy ];
  propagatedBuildInputs = [ ament-index-python builtin-interfaces geometry-msgs gflags gz-math-vendor gz-msgs-vendor gz-sim-vendor gz-transport-vendor launch launch-ros python3Packages.catkin-pkg rclcpp rclcpp-action rclcpp-components rcpputils ros-gz-bridge ros-gz-interfaces ros2pkg simulation-interfaces std-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = "Tools for using Gazebo Sim simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
