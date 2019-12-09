
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shared-queues-vendor, ament-cmake-ros, rclcpp, ament-lint-common, rosbag2, test-msgs, rmw, ament-cmake-gmock, rosbag2-test-common, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-rosbag2-transport";
  version = "0.0.7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/crystal/rosbag2_transport/0.0.7-0.tar.gz";
    name = "0.0.7-0.tar.gz";
    sha256 = "e32c864241cb17117eae3a7c56b55095ec350968e3e07c96e5baa65c5720df46";
  };

  buildType = "ament_cmake";
  buildInputs = [ shared-queues-vendor rclcpp rmw rosbag2 ];
  checkInputs = [ ament-lint-common test-msgs ament-cmake-gmock rosbag2-test-common ament-lint-auto ];
  propagatedBuildInputs = [ shared-queues-vendor rclcpp rmw rosbag2 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware'';
    license = with lib.licenses; [ asl20 ];
  };
}
