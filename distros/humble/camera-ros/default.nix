
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-cppcheck, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-mypy, ament-cmake-pep257, ament-cmake-pyflakes, ament-cmake-xmllint, ament-lint-auto, camera-info-manager, cv-bridge, image-view, libcamera, rclcpp, rclcpp-components, ros2launch, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-camera-ros";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/camera_ros-release/archive/release/humble/camera_ros/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "bc9c9c1a2621d948cbff5124232d37625ef60f708de331a194c28ceef40df907";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-cppcheck ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-mypy ament-cmake-pep257 ament-cmake-pyflakes ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ camera-info-manager cv-bridge image-view libcamera rclcpp rclcpp-components ros2launch sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "node for libcamera supported cameras (V4L2, Raspberry Pi Camera Modules)";
    license = with lib.licenses; [ mit ];
  };
}
