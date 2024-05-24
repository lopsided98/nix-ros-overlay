
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, pybind11-vendor, python-cmake-module, pythonPackages, rcl-interfaces, rclpy, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-transport, rosidl-runtime-py, rpyutils, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-py";
  version = "0.26.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_py/0.26.3-1.tar.gz";
    name = "0.26.3-1.tar.gz";
    sha256 = "84c6738a3853bff35bb4d8ea4266de2d702a5ec2d7820ea07a6382c4bba9fa60";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common pythonPackages.pytest rcl-interfaces rosbag2-compression-zstd rosbag2-storage-default-plugins rosbag2-test-common rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ pybind11-vendor rclpy rosbag2-compression rosbag2-cpp rosbag2-storage rosbag2-transport rpyutils ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = "Python API for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
