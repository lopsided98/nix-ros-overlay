
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shared-queues-vendor, ament-cmake-ros, rclcpp, ament-lint-common, rosbag2, test-msgs, python-cmake-module, rmw, ament-cmake-gmock, ament-index-cpp, rosbag2-test-common, ament-lint-auto }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-transport";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2_transport/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "1a91c1d1f95b04e95c8c126d9fa7e963bf0ae356bd97209047fc5df80f649bce";
  };

  buildType = "ament_cmake";
  buildInputs = [ shared-queues-vendor rosbag2 python-cmake-module rmw rclcpp ];
  checkInputs = [ ament-lint-common test-msgs ament-cmake-gmock ament-index-cpp rosbag2-test-common ament-lint-auto ];
  propagatedBuildInputs = [ shared-queues-vendor rosbag2 python-cmake-module rmw rclcpp ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''Layer encapsulating ROS middleware to allow rosbag2 to be used with or without middleware'';
    license = with lib.licenses; [ asl20 ];
  };
}
