
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, ament-lint-auto, ament-lint-common, gflags, gz-math-vendor, gz-msgs-vendor, gz-sim-vendor, gz-transport-vendor, launch, launch-ros, launch-testing, launch-testing-ament-cmake, pkg-config, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros-gz-sim";
  version = "1.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/jazzy/ros_gz_sim/1.0.7-1.tar.gz";
    name = "1.0.7-1.tar.gz";
    sha256 = "60378b0900b880b145ddabdf8d7eef27ba7068b0d7951ae50e76c09baa3bb127";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common launch-ros launch-testing launch-testing-ament-cmake ];
  propagatedBuildInputs = [ ament-index-python gflags gz-math-vendor gz-msgs-vendor gz-sim-vendor gz-transport-vendor launch launch-ros rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python pkg-config ];

  meta = {
    description = "Tools for using Gazebo Sim simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
