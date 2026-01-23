
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, gflags, ignition, pkg-config, rclcpp, ros2pkg, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-gz-sim";
  version = "0.244.21-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_gz_sim/0.244.21-1.tar.gz";
    name = "0.244.21-1.tar.gz";
    sha256 = "a34bfb9c5ef4610e4e8314c9008253caa841c8856b76ec7b30e23778100f1cfd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_ignition-gazebo6 ament-index-python gflags ignition.math6 rclcpp ros2pkg std-msgs ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Tools for using Gazebo Sim simulation with ROS.";
    license = with lib.licenses; [ asl20 ];
  };
}
