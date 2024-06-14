
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, camera-calibration-parsers, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, pkg-config, rclcpp, rclcpp-components, rclpy, std-msgs, swri-geometry-util, swri-math-util, swri-opencv-util, swri-roscpp, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-swri-image-util";
  version = "3.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_image_util/3.6.1-3.tar.gz";
    name = "3.6.1-3.tar.gz";
    sha256 = "8b02c84391e9df55d267a73378e0c4b7fc56bfd248c4aa7e5fce72338002fbb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp boost camera-calibration-parsers cv-bridge eigen geometry-msgs image-geometry image-transport message-filters nav-msgs rclcpp rclcpp-components rclpy std-msgs swri-geometry-util swri-math-util swri-opencv-util swri-roscpp tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "swri_image_util";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
