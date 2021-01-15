
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, gflags, ignition, pkg-config, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-ros-ign-gazebo";
  version = "0.221.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/foxy/ros_ign_gazebo/0.221.1-1.tar.gz";
    name = "0.221.1-1.tar.gz";
    sha256 = "e2a3c81780a6076c2884210df7dac4574bbf0027370d28cfc61ef6941b17991f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ gflags ignition.math6 ignition.msgs5 ignition.transport8 rclcpp ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Tools for using Ignition Gazebo simulation with ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
