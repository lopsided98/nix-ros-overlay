
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gmock, ament-cmake-ros, ament-index-cpp, ament-lint-auto, ament-lint-common, python-cmake-module, rclcpp, rmw, rmw-implementation-cmake, rosbag2-compression, rosbag2-cpp, rosbag2-storage, rosbag2-test-common, rpyutils, shared-queues-vendor, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-transport";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/rosbag2_transport/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "b60ba321facfe5c320a584f0be99f8ee610a24d5a8ba30e8461882ffcc5c7d30";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-index-cpp ament-lint-auto ament-lint-common rmw-implementation-cmake rosbag2-test-common test-msgs ];
  propagatedBuildInputs = [ python-cmake-module rclcpp rmw rosbag2-compression rosbag2-cpp rosbag2-storage rpyutils shared-queues-vendor yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware'';
    license = with lib.licenses; [ asl20 ];
  };
}
