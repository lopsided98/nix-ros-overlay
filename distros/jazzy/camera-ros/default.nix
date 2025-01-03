
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-pep257, ament-cmake-pyflakes, ament-cmake-xmllint, ament-index-python, ament-lint-auto, camera-info-manager, clang, cv-bridge, image-view, libcamera, rclcpp, rclcpp-components, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-camera-ros";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/camera_ros-release/archive/release/jazzy/camera_ros/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "449cf17ab9d20aaff2780a4edc408cce6eefd29e95adb0a7cfe3f1a3b1b66867";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-pep257 ament-cmake-pyflakes ament-cmake-xmllint ament-lint-auto clang ];
  propagatedBuildInputs = [ ament-index-python camera-info-manager cv-bridge image-view libcamera rclcpp rclcpp-components ros2launch sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "node for libcamera supported cameras (V4L2, Raspberry Pi Camera Modules)";
    license = with lib.licenses; [ mit ];
  };
}
