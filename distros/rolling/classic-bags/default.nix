
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, rclcpp, rclpy, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-classic-bags";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/classic_bags-release/archive/release/rolling/classic_bags/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "54702b9ddea4d08dfe365a4589bc916524f98cbec6867b9c59909e7d7ea2a414";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rosbag2-cpp rosbag2-py rosbag2-storage rosidl-runtime-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''A ROS 2 interface in the style of ROS 1 for reading and writing bag files'';
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
