
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, pluginlib, rclcpp, rcutils, ros1-bridge, ros1-rosbag-storage-vendor, rosbag2, rosbag2-storage, rosbag2-test-common, rosbag2-transport, shared-queues-vendor, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-rosbag2-bag-v2-plugins";
  version = "0.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/foxy/rosbag2_bag_v2_plugins/0.0.10-1.tar.gz";
    name = "0.0.10-1.tar.gz";
    sha256 = "0af1ade39d4ed3e5fdc742eeebcc29351ac49666a9f470ecb658aa45cf118e1d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common rosbag2-transport shared-queues-vendor std-msgs ];
  propagatedBuildInputs = [ pluginlib rclcpp rcutils ros1-bridge ros1-rosbag-storage-vendor rosbag2 rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing storage and converter plugins for rosbag 1'';
    license = with lib.licenses; [ asl20 ];
  };
}
