
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, broll, pluginlib, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-transport, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-broll";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_broll-release/archive/release/rolling/rosbag2_storage_broll/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "ed6d0071b27755a9e2f948d80ddbcf962efb68389dae2c24977a0835de8970b7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ broll pluginlib rclcpp rosbag2-cpp rosbag2-storage rosbag2-transport sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Rosbag2 storage plugin to play audio/video files as ROS messages using B-Roll tools";
    license = with lib.licenses; [ asl20 ];
  };
}
