
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, ffmpeg, image-transport, live555-vendor, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-rtsp-image-transport";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtsp_image_transport-release/archive/release/jazzy/rtsp_image_transport/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "3dd26b383fc4295e8b0ba715d36a691f2e556d672a02b4acd076cae746be2ad9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ cv-bridge ffmpeg image-transport live555-vendor pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Transmit video streams with the Real-Time Streaming Protocol";
    license = with lib.licenses; [ asl20 ];
  };
}
