
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, broll, pluginlib, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-transport, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-storage-broll";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_broll-release/archive/release/lyrical/rosbag2_storage_broll/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "aab1c03c9506985b5f61cd245cafa81cbc47e0abe73400df86abc5c6b56c1ca6";
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
