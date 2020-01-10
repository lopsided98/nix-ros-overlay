
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, ros1-bridge, ros1-rosbag-storage-vendor, rosbag2, rosbag2-storage, rosbag2-test-common, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-bag-v2-plugins";
  version = "0.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/eloquent/rosbag2_bag_v2_plugins/0.0.7-4.tar.gz";
    name = "0.0.7-4.tar.gz";
    sha256 = "f339a40593933cfc0d72fecf5951aec41731863d11c1d51ff66a551cbd78a76e";
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
