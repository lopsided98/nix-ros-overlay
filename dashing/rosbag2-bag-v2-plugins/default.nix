
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag2-test-common, rcutils, pluginlib, std-msgs, ament-lint-common, ament-cmake, rosbag2, ament-cmake-gmock, rosbag2-storage, ros1-bridge, rclcpp, ament-lint-auto, ros1-rosbag-storage-vendor }:
buildRosPackage {
  pname = "ros-dashing-rosbag2-bag-v2-plugins";
  version = "0.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/dashing/rosbag2_bag_v2_plugins/0.0.6-2.tar.gz";
    name = "0.0.6-2.tar.gz";
    sha256 = "cbf6f54c011613ef0ff8b9fc0af0606dd57cd7f751771579ac0c8f09c1782e41";
  };

  buildType = "ament_cmake";
  buildInputs = [ rcutils pluginlib rosbag2 rosbag2-storage ros1-bridge rclcpp ros1-rosbag-storage-vendor ];
  checkInputs = [ std-msgs ament-lint-common ament-cmake-gmock rosbag2-test-common ament-lint-auto ];
  propagatedBuildInputs = [ rcutils pluginlib rosbag2 rosbag2-storage ros1-bridge rclcpp ros1-rosbag-storage-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing storage and converter plugins for rosbag 1'';
    license = with lib.licenses; [ asl20 ];
  };
}
