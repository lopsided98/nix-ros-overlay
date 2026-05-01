
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, ffmpeg, image-transport, live555-vendor, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-rtsp-image-transport";
  version = "2.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtsp_image_transport-release/archive/release/lyrical/rtsp_image_transport/2.0.1-3.tar.gz";
    name = "2.0.1-3.tar.gz";
    sha256 = "ad39495f46b4ffa8e9f184699a7b42c6b248ae2ab5d9f6dfe207c314527da877";
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
