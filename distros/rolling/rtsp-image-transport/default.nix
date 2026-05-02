
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, ffmpeg, image-transport, live555-vendor, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-rtsp-image-transport";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtsp_image_transport-release/archive/release/rolling/rtsp_image_transport/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "6ccb95d9409e0370a8cf6df0220b0e7f4873dc25197a66dac37a3be908c17743";
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
