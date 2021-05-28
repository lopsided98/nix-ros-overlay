
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, rclcpp, rmw, rmw-implementation-cmake, rosbag2-compression, rosbag2-cpp, rosbag2-interfaces, rosbag2-storage, rosbag2-test-common, shared-queues-vendor, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-transport";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/galactic/rosbag2_transport/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "ce6b19f3c07cae71145571a36e7a3e3cf7cf2555c8199269a134cf245dd2101a";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-index-cpp ament-lint-auto ament-lint-common rmw-implementation-cmake rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ rclcpp rmw rosbag2-compression rosbag2-cpp rosbag2-interfaces rosbag2-storage shared-queues-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware'';
    license = with lib.licenses; [ asl20 ];
  };
}
