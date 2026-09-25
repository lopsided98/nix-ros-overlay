
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ffmpeg-encoder-decoder, ffmpeg-image-transport-msgs, sensor-msgs, tobas-camera-msgs, tobas-camera-ros-interface, tobas-ic-drivers, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-image-processing";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_image_processing/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "a4aa03a80d8f6066bc719d835d349f398daf09d07416e7858dc575ffb48c6249";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ffmpeg-encoder-decoder ffmpeg-image-transport-msgs sensor-msgs tobas-camera-msgs tobas-camera-ros-interface tobas-ic-drivers tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 nodes for video capture, image compression, decompression, conversion, and display.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
