
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, rclcpp, rclpy, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-iron-classic-bags";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/classic_bags-release/archive/release/iron/classic_bags/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "fd591a3684873b9e114740277c0fa9be7c0e3896cb7142485add56c46fa780c4";
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
