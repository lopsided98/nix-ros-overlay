
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, rclcpp, rclpy, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-classic-bags";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/classic_bags-release/archive/release/jazzy/classic_bags/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "ab8141937f3366bcd56800b8b74ea676a8e341d82a450ef6affcfb901e71d0e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rosbag2-cpp rosbag2-py rosbag2-storage rosidl-runtime-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A ROS 2 interface in the style of ROS 1 for reading and writing bag files";
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
