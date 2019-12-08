
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, image-geometry, geometry-msgs, boost, camera-calibration-parsers, image-transport, ament-cmake-gtest, message-filters, pkg-config, rclcpp, swri-opencv-util, swri-math-util, nav-msgs, ament-index-cpp, std-msgs, swri-geometry-util, rclpy, swri-roscpp, tf2, eigen, rclcpp-components }:
buildRosPackage {
  pname = "ros-dashing-swri-image-util";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_image_util/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "8cc96bb11206671f37255affa38c11e8bfafb37c7d8c86bffc71b9109698cb89";
  };

  buildType = "ament_cmake";
  buildInputs = [ cv-bridge image-geometry geometry-msgs boost camera-calibration-parsers image-transport message-filters rclcpp swri-opencv-util swri-math-util nav-msgs ament-index-cpp std-msgs swri-geometry-util rclpy swri-roscpp tf2 eigen rclcpp-components ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ cv-bridge image-geometry geometry-msgs boost camera-calibration-parsers image-transport message-filters rclcpp swri-opencv-util swri-math-util nav-msgs ament-index-cpp std-msgs swri-geometry-util rclpy swri-roscpp tf2 eigen rclcpp-components ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''swri_image_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
