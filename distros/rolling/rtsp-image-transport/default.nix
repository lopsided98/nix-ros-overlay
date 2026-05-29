
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, ffmpeg, image-transport, live555-vendor, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rtsp-image-transport";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtsp_image_transport-release/archive/release/rolling/rtsp_image_transport/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "f04910c36b11e40ee057bf2aa3e0d4a45a2426b0efe32f5a95666c7089a7a9ee";
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
