
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, camera-calibration-parsers, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, pkg-config, rclcpp, rclcpp-components, rclpy, std-msgs, swri-geometry-util, swri-math-util, swri-opencv-util, swri-roscpp, tf2 }:
buildRosPackage {
  pname = "ros-rolling-swri-image-util";
  version = "3.6.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_image_util/3.6.1-2.tar.gz";
    name = "3.6.1-2.tar.gz";
    sha256 = "a30a0e081d15149c7d2a269d7f5d887b5d77cbebada13f416b528be5dd9f1ee6";
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
