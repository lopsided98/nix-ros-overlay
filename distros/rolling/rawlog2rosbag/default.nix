
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cli11, geometry-msgs, mrpt-libros-bridge, mrpt-maps, mrpt-obs, nav-msgs, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-storage-mcap, sensor-msgs, std-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-rawlog2rosbag";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/rolling/rawlog2rosbag/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "c7650d7bd6f925786ae63a4b0e6187d9647a97f5420a0ac262771cd83f2e4ff0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ cli11 geometry-msgs mrpt-libros-bridge mrpt-maps mrpt-obs nav-msgs rclcpp rosbag2-cpp rosbag2-storage rosbag2-storage-default-plugins rosbag2-storage-mcap sensor-msgs std-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "CLI tool to convert MRPT rawlog datasets into ROS 2 bags (mcap, sqlite3).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
