
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, pybind11-vendor, python-cmake-module, python3, python3Packages, rcl-interfaces, rclpy, rosbag2-compression, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-transport, rosidl-runtime-py, rpyutils, std-msgs }:
buildRosPackage {
  pname = "ros-humble-rosbag2-py";
  version = "0.15.17-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/rosbag2_py/0.15.17-1.tar.gz";
    name = "0.15.17-1.tar.gz";
    sha256 = "d23eafc5948bad5d37b14e7fcc586df9ca51949f69e757510005c767163cedb0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module python3 ];
  checkInputs = [ ament-lint-auto ament-lint-common python3Packages.pytest rcl-interfaces rclpy rosbag2-storage-default-plugins rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ pybind11-vendor rosbag2-compression rosbag2-cpp rosbag2-storage rosbag2-transport rpyutils ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = "Python API for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
