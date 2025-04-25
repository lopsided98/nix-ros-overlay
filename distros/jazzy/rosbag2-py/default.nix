
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, pybind11-vendor, python-cmake-module, python3, python3Packages, rcl-interfaces, rclpy, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-test-msgdefs, rosbag2-transport, rosidl-runtime-py, rpyutils, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rosbag2-py";
  version = "0.26.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/jazzy/rosbag2_py/0.26.7-1.tar.gz";
    name = "0.26.7-1.tar.gz";
    sha256 = "a704ac214204a71edd570f16a1fbcb5a3815b4bd4c1f6258c68d8c8561fd9cc8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module python3 ];
  checkInputs = [ ament-lint-auto ament-lint-common python3Packages.pytest rcl-interfaces rosbag2-compression-zstd rosbag2-storage-default-plugins rosbag2-test-common rosbag2-test-msgdefs rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ pybind11-vendor rclpy rosbag2-compression rosbag2-cpp rosbag2-storage rosbag2-transport rpyutils ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros python-cmake-module ];

  meta = {
    description = "Python API for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
