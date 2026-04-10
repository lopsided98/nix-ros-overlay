
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, opencv, pluginlib, rcl-interfaces, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-compressed-depth-image-transport";
  version = "6.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/compressed_depth_image_transport/6.2.3-1.tar.gz";
    name = "6.2.3-1.tar.gz";
    sha256 = "74182d5fc866feddddaedfddc4d387b7ac46b6097cc65b77d8b49dd1e1abd224";
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
