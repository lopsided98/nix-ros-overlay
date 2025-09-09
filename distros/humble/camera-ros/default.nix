
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-pep257, ament-cmake-pyflakes, ament-cmake-xmllint, ament-index-python, ament-lint-auto, camera-info-manager, clang, cv-bridge, libcamera, rclcpp, rclcpp-components, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-camera-ros";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/camera_ros-release/archive/release/humble/camera_ros/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "dbfd81a6a4fd5995dd7bff267d4d07a5fd966d68774be9a2bba2b6d9576f62dd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-pep257 ament-cmake-pyflakes ament-cmake-xmllint ament-lint-auto clang ];
  propagatedBuildInputs = [ ament-index-python camera-info-manager cv-bridge libcamera rclcpp rclcpp-components ros2launch sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "node for libcamera supported cameras (V4L2, Raspberry Pi Camera Modules)";
    license = with lib.licenses; [ mit ];
  };
}
