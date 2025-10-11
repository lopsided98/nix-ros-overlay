
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, opencv, pluginlib, rcl-interfaces, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-compressed-depth-image-transport";
  version = "6.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/compressed_depth_image_transport/6.2.2-1.tar.gz";
    name = "6.2.2-1.tar.gz";
    sha256 = "0fd5d86d0d714ca69796e672d7ee7e5d38874288454f92b404b2aeaba78c6f3d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge image-transport opencv opencv.cxxdev pluginlib rcl-interfaces rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Compressed_depth_image_transport provides a plugin to image_transport for transparently sending
    depth images (raw, floating-point) using PNG compression.";
    license = with lib.licenses; [ bsdOriginal mit ];
  };
}
