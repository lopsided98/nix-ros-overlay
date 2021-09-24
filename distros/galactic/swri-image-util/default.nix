
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, boost, camera-calibration-parsers, cv-bridge, eigen, geometry-msgs, image-geometry, image-transport, message-filters, nav-msgs, pkg-config, rclcpp, rclcpp-components, rclpy, std-msgs, swri-geometry-util, swri-math-util, swri-opencv-util, swri-roscpp, tf2 }:
buildRosPackage {
  pname = "ros-galactic-swri-image-util";
  version = "3.3.2-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/swri_image_util/3.3.2-2.tar.gz";
    name = "3.3.2-2.tar.gz";
    sha256 = "e3a30aac2ebdcee2ef252a58ceec7eac853353a4d0663ebf59a8610f880618e7";
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
