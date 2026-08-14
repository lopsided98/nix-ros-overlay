
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-index-python, ament-lint-auto, ament-lint-common, python3, python3Packages, qt5, rclpy, ros2cli, rosbag2-py, rosidl-runtime-py, sensor-msgs, tf2-msgs }:
buildRosPackage {
  pname = "ros-rolling-unbag";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/unbag-release/archive/release/rolling/unbag/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "9060387fbdc6963e698f8c507ca68fc6bd5f3f98ec38ae4420b46b0d894c1bf4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.setuptools qt5.qtbase ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python python3Packages.numpy python3Packages.opencv4 python3Packages.pyyaml python3Packages.tqdm qt5.qtsvg rclpy ros2cli rosbag2-py rosidl-runtime-py sensor-msgs tf2-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "A ROS 2 tool for exporting bags to human readable files. Supports pluggable export routines to handle any message type.";
    license = with lib.licenses; [ mit ];
  };
}
