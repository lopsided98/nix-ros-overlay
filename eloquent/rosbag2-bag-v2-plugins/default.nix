
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, ros1-bridge, ros1-rosbag-storage-vendor, rosbag2, rosbag2-storage, rosbag2-test-common, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-bag-v2-plugins";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/eloquent/rosbag2_bag_v2_plugins/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "31bf1b5cf3b54bb2cc039caf8d3625f0542635ad94c4625980fc3e59eb2c2500";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common std-msgs ];
  propagatedBuildInputs = [ pluginlib rclcpp rcutils ros1-bridge ros1-rosbag-storage-vendor rosbag2 rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing storage and converter plugins for rosbag 1'';
    license = with lib.licenses; [ asl20 ];
  };
}
