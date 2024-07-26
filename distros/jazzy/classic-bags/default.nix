
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, rclcpp, rclpy, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-mcap, rosbag2-storage-sqlite3, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-classic-bags";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/classic_bags-release/archive/release/jazzy/classic_bags/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "13c12c984c53e1df1e2bc95079d6da903cd9f7275c20dade1d2477427ab3df75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest rosbag2-storage-mcap rosbag2-storage-sqlite3 std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rosbag2-cpp rosbag2-py rosbag2-storage rosidl-runtime-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A ROS 2 interface in the style of ROS 1 for reading and writing bag files";
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
