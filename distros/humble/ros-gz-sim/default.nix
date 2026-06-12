
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ignition-gazebo6, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, gflags, ignition, pkg-config, rclcpp, ros2pkg, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-gz-sim";
  version = "0.244.25-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/humble/ros_gz_sim/0.244.25-1.tar.gz";
    name = "0.244.25-1.tar.gz";
    sha256 = "fc0f85e7917517bad289f3c458884718c2bd967fc6f99db5ebfebb5f8988f052";
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
