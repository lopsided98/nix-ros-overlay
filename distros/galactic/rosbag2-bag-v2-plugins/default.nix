
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, class-loader, pluginlib, rclcpp, rcutils, ros1-bridge, ros1-rosbag-storage-vendor, rosbag2, rosbag2-storage, rosbag2-test-common, rosbag2-transport, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-rosbag2-bag-v2-plugins";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_bag_v2-release/archive/release/galactic/rosbag2_bag_v2_plugins/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "9e8820ed4d14f0eb9e874613c4ebeb25279b10d772ff98aa2d9cff7a06f01d01";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common rosbag2-test-common rosbag2-transport std-msgs ];
  propagatedBuildInputs = [ class-loader pluginlib rclcpp rcutils ros1-bridge ros1-rosbag-storage-vendor rosbag2 rosbag2-storage ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package containing storage and converter plugins for rosbag 1'';
    license = with lib.licenses; [ asl20 ];
  };
}
