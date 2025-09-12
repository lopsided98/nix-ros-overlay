
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, ffmpeg, image-transport, live555-vendor, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rtsp-image-transport";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtsp_image_transport-release/archive/release/rolling/rtsp_image_transport/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "b2b60ba6d1d8a642d6f52e6b84fe1151d4213c839a8460ef78bc2c2b1f20605d";
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
