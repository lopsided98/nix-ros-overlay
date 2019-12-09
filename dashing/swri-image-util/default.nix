
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, swri-opencv-util, ament-cmake, image-transport, eigen, tf2, nav-msgs, rclcpp-components, rclpy, rclcpp, ament-cmake-gtest, message-filters, std-msgs, swri-geometry-util, cv-bridge, pkg-config, ament-index-cpp, camera-calibration-parsers, swri-roscpp, image-geometry, boost, swri-math-util }:
buildRosPackage {
  pname = "ros-dashing-swri-image-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_image_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "8cc96bb11206671f37255affa38c11e8bfafb37c7d8c86bffc71b9109698cb89";
  };

  buildType = "ament_cmake";
  buildInputs = [ geometry-msgs swri-opencv-util image-transport eigen tf2 nav-msgs rclcpp-components rclpy rclcpp message-filters std-msgs swri-geometry-util cv-bridge ament-index-cpp camera-calibration-parsers image-geometry swri-roscpp boost swri-math-util ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ geometry-msgs swri-opencv-util image-transport eigen tf2 nav-msgs rclcpp-components rclpy rclcpp message-filters std-msgs swri-geometry-util cv-bridge ament-index-cpp camera-calibration-parsers image-geometry swri-roscpp boost swri-math-util ];
  nativeBuildInputs = [ pkg-config ament-cmake ];

  meta = {
    description = ''swri_image_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
