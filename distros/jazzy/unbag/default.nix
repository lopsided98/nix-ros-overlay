
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, ament-lint-common, python3, python3Packages, qt5, rclpy, ros2cli, rosbag2-compression-zstd, rosbag2-py, rosidl-runtime-py, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-jazzy-unbag";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unbag-release/archive/release/jazzy/unbag/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "13fc04b51db86b7d13fc06ca0a862d622771e3147909661b4e29ec05aa6fd348";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.setuptools qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python3Packages.numpy python3Packages.opencv4 python3Packages.pyyaml python3Packages.tqdm qt5.qtsvg rclpy ros2cli rosbag2-compression-zstd rosbag2-py rosidl-runtime-py sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A ROS 2 tool for exporting bags to human readable files. Supports pluggable export routines to handle any message type.";
    license = with lib.licenses; [ mit ];
  };
}
