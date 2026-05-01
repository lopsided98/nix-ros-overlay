
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, camera-calibration-parsers, cv-bridge, eigen, image-geometry, image-transport, message-filters, opencv, pkg-config, rcl-interfaces, rclcpp, rclcpp-components, rclpy, swri-geometry-util, swri-math-util, swri-opencv-util, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-swri-image-util";
  version = "3.8.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/lyrical/swri_image_util/3.8.7-3.tar.gz";
    name = "3.8.7-3.tar.gz";
    sha256 = "040096636705ef95735bc1ecdb510e03c399f82328eef4643b266898a48b5a3d";
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
