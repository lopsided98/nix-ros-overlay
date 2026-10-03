
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-cpp, cv-bridge, eigen, image-transport, message-filters, opencv, rcl-interfaces, rclcpp, rclcpp-components, sensor-msgs, swri-geometry-util, swri-math-util, swri-opencv-util, tf2 }:
buildRosPackage {
  pname = "ros-rolling-swri-image-util";
  version = "3.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_image_util/3.12.0-1.tar.gz";
    name = "3.12.0-1.tar.gz";
    sha256 = "69336f2a626269c301594c6a3f279b6db922044878f2439e422fca7624f9a252";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-index-cpp cv-bridge image-transport message-filters opencv opencv.cxxdev rcl-interfaces rclcpp rclcpp-components sensor-msgs swri-geometry-util swri-math-util swri-opencv-util tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package of commonly image manipulation utilities.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
