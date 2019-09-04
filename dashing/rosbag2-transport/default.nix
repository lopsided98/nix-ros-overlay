
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2, ament-lint-common, ament-cmake-gmock, test-msgs, shared-queues-vendor, rosbag2-test-common, rclcpp, ament-cmake-ros, ament-lint-auto, rmw }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-transport";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_transport/0.1.4-1.tar.gz;
    sha256 = "8131a6289a9049ffbc2e72e893a278c9813623c3fab4b77dc7f978d2c5e60160";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosbag2 rclcpp rmw shared-queues-vendor ];
  checkInputs = [ ament-lint-common ament-cmake-gmock test-msgs rosbag2-test-common ament-lint-auto ];
  propagatedBuildInputs = [ rosbag2 rclcpp rmw shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware'';
    license = with lib.licenses; [ asl20 ];
  };
}
