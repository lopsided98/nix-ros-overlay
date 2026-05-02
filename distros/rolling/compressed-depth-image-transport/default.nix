
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, cv-bridge, image-transport, opencv, pluginlib, rcl-interfaces, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-compressed-depth-image-transport";
  version = "6.2.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/image_transport_plugins-release/archive/release/rolling/compressed_depth_image_transport/6.2.4-2.tar.gz";
    name = "6.2.4-2.tar.gz";
    sha256 = "7265e6c10c717316c7f1362a5e703b14b81c73502c8996b053f4b7780d5b8597";
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
