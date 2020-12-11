
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, camera-calibration-parsers, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, pkg-config, rclcpp, rclcpp-components, rclpy, std-msgs, swri-geometry-util, swri-math-util, swri-opencv-util, swri-roscpp, tf2 }:
buildRosPackage {
  pname = "ros-eloquent-swri-image-util";
  version = "3.3.2-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_image_util/3.3.2-1.tar.gz";
    name = "3.3.2-1.tar.gz";
    sha256 = "4dcdc6ce812fad7ca459595572758bb03cba2d67e038ea2bb5f255ea9840b66c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp boost camera-calibration-parsers cv-bridge eigen geometry-msgs image-geometry image-transport message-filters nav-msgs rclcpp rclcpp-components rclpy std-msgs swri-geometry-util swri-math-util swri-opencv-util swri-roscpp tf2 ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''swri_image_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
