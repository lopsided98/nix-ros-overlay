
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, broll, pluginlib, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-transport, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-storage-broll";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2_broll-release/archive/release/jazzy/rosbag2_storage_broll/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "038fc3a4c94fccbfc9dede299311c11d0d87ba27bcb1c4ab37894e6ef485e5b7";
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
