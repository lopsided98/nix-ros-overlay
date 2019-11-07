
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2, ament-lint-common, rosbag2-test-common, shared-queues-vendor, test-msgs, ament-cmake-gmock, rclcpp, ament-index-cpp, ament-cmake-ros, ament-lint-auto, rmw }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-transport";
  version = "0.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/dashing/rosbag2_transport/0.1.8-1.tar.gz";
    name = "0.1.8-1.tar.gz";
    sha256 = "3844fc153636416b6f4c5f2b4703cb7ad579f9c91de147732a5b6d5d1412d470";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosbag2 rclcpp rmw shared-queues-vendor ];
  checkInputs = [ ament-lint-common rosbag2-test-common test-msgs ament-cmake-gmock ament-index-cpp ament-lint-auto ];
  propagatedBuildInputs = [ rosbag2 rclcpp rmw shared-queues-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware'';
    license = with lib.licenses; [ asl20 ];
  };
}
