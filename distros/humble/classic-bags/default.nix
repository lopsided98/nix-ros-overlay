
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, builtin-interfaces, rclcpp, rclpy, rosbag2-cpp, rosbag2-py, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-storage-mcap, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-humble-classic-bags";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/classic_bags-release/archive/release/humble/classic_bags/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "e0204d8e5e50fa3f312c54098d14b330f3863a2a866dbfd041d2c8e049f6479d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest rosbag2-storage-default-plugins rosbag2-storage-mcap std-msgs ];
  propagatedBuildInputs = [ builtin-interfaces rclcpp rclpy rosbag2-cpp rosbag2-py rosbag2-storage rosidl-runtime-py ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A ROS 2 interface in the style of ROS 1 for reading and writing bag files";
    license = with lib.licenses; [ "BSD-3-clause" ];
  };
}
