
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-python, ament-cmake-ros, ament-lint-auto, ament-lint-common, python3, python3Packages, rcl-interfaces, rclpy, rosbag2-compression, rosbag2-compression-zstd, rosbag2-cpp, rosbag2-storage, rosbag2-storage-default-plugins, rosbag2-test-common, rosbag2-test-msgdefs, rosbag2-transport, rosidl-runtime-py, rpyutils, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-py";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_py/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "2cb09dbc19d0ae3c20639d3c2914c01a2b3053f623b7fb6ccc37a8d358e4d12e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros python3 python3Packages.pybind11 ];
  checkInputs = [ ament-lint-auto ament-lint-common python3Packages.pytest rcl-interfaces rosbag2-compression-zstd rosbag2-storage-default-plugins rosbag2-test-common rosbag2-test-msgdefs rosidl-runtime-py std-msgs ];
  propagatedBuildInputs = [ rclpy rosbag2-compression rosbag2-cpp rosbag2-storage rosbag2-transport rpyutils ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = "Python API for rosbag2";
    license = with lib.licenses; [ asl20 ];
  };
}
