
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, camera-calibration-parsers, cv-bridge, eigen, image-geometry, image-transport, message-filters, opencv, pkg-config, rcl-interfaces, rclcpp, rclcpp-components, rclpy, swri-geometry-util, swri-math-util, swri-opencv-util, tf2 }:
buildRosPackage {
  pname = "ros-humble-swri-image-util";
  version = "3.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_image_util/3.8.5-1.tar.gz";
    name = "3.8.5-1.tar.gz";
    sha256 = "6cda28ff117782829318a59f3a15a92a9da9bd359aa1b5568add8de2455b4ebc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp camera-calibration-parsers cv-bridge eigen image-geometry image-transport message-filters opencv opencv.cxxdev rcl-interfaces rclcpp rclcpp-components rclpy swri-geometry-util swri-math-util swri-opencv-util tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "A package of commonly image manipulation utilities.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
