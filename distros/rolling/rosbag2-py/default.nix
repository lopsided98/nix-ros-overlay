
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, pybind11-vendor, python-cmake-module, pythonPackages, rcl-interfaces, rclpy, rosbag2-compression, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-transport, rosidl-runtime-py, rpyutils, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-py";
  version = "0.23.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_py/0.23.0-1.tar.gz";
    name = "0.23.0-1.tar.gz";
    sha256 = "8fee5a794a36a1f493b085e350e17780a136f6e6f7665c84578ea7e66d85d91e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-lint-auto ament-lint-common pythonPackages.pytest rcl-interfaces rclpy rosbag2-storage-default-plugins rosbag2-test-common rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ pybind11-vendor rosbag2-compression rosbag2-cpp rosbag2-storage rosbag2-transport rpyutils ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''Python API for rosbag2'';
    license = with lib.licenses; [ asl20 ];
  };
}
