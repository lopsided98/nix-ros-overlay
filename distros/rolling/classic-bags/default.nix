
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, rclcpp, rclpy, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-classic-bags";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/classic_bags-release/archive/release/rolling/classic_bags/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "ef1071fbb909a6c2f1067a8f0e04014025b7c82af89c44fe009d2cd32e585a1d";
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
