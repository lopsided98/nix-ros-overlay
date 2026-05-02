
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, broll, pluginlib, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-transport, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-storage-broll";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_broll-release/archive/release/rolling/rosbag2_storage_broll/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "621c35195e5bf693e1dbec638ce9d3e56941ce92b58e819d6bd190de3e6b3bda";
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
