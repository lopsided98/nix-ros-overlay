
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, camera-calibration-parsers, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, pkg-config, rclcpp, rclcpp-components, rclpy, std-msgs, swri-geometry-util, swri-math-util, swri-opencv-util, swri-roscpp, tf2 }:
buildRosPackage {
  pname = "ros-iron-swri-image-util";
  version = "3.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_image_util/3.7.3-1.tar.gz";
    name = "3.7.3-1.tar.gz";
    sha256 = "1632d2edbb064221149086ca511c34ccd0085d3b4750ce05307b43eccf5932f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp boost camera-calibration-parsers cv-bridge eigen geometry-msgs image-geometry image-transport message-filters nav-msgs rclcpp rclcpp-components rclpy std-msgs swri-geometry-util swri-math-util swri-opencv-util swri-roscpp tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "A package of commonly image manipulation utilities.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
