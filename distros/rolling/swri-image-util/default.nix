
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, camera-calibration-parsers, cv-bridge, eigen, image-geometry, image-transport, message-filters, opencv, pkg-config, rcl-interfaces, rclcpp, rclcpp-components, rclpy, swri-geometry-util, swri-math-util, swri-opencv-util, tf2 }:
buildRosPackage {
  pname = "ros-rolling-swri-image-util";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_image_util/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "6b6ce51ddac97d21ab5504bb310f7ba0b05273f6574f2b2aac4d15b0867b43bb";
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
