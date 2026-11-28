
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, cli11, geometry-msgs, mrpt-libros-bridge, mrpt-maps, mrpt-obs, nav-msgs, rclcpp, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-storage-mcap, sensor-msgs, std-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-humble-rawlog2rosbag";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_ros_bridge-release/archive/release/humble/rawlog2rosbag/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "b2050f1a8614281e58ad9f4f6c95369337e5cd8295ab917ec162eded566f27d8";
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
