
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2, pluginlib, ament-lint-common, rosbag2-test-common, ament-cmake-gmock, ros1-rosbag-storage-vendor, ament-cmake, ros1-bridge, rclcpp, std-msgs, ament-lint-auto, rosbag2-storage, rcutils }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-bag-v2-plugins";
  version = "0.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/dashing/rosbag2_bag_v2_plugins/0.0.6-2.tar.gz";
    name = "0.0.6-2.tar.gz";
    sha256 = "cbf6f54c011613ef0ff8b9fc0af0606dd57cd7f751771579ac0c8f09c1782e41";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosbag2 pluginlib ros1-rosbag-storage-vendor ros1-bridge rclcpp rosbag2-storage rcutils ];
  checkInputs = [ ament-lint-common ament-cmake-gmock rosbag2-test-common std-msgs ament-lint-auto ];
  propagatedBuildInputs = [ rosbag2 pluginlib ros1-rosbag-storage-vendor ros1-bridge rclcpp rosbag2-storage rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing storage and converter plugins for rosbag 1'';
    license = with lib.licenses; [ asl20 ];
  };
}
