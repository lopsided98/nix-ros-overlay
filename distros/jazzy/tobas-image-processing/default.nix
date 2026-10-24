
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, ffmpeg, ffmpeg-encoder-decoder, ffmpeg-image-transport-msgs, launch, launch-ros, opencv, pkg-config, sensor-msgs, tobas-camera-msgs, tobas-camera-ros-interface, tobas-ic-drivers, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-image-processing";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_image_processing/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "610898b762486991bbb54258f8622b82d95714d99a33f561e751a569f2a9a1f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ cv-bridge ffmpeg ffmpeg-encoder-decoder ffmpeg-image-transport-msgs launch launch-ros opencv opencv.cxxdev sensor-msgs tobas-camera-msgs tobas-camera-ros-interface tobas-ic-drivers tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "ROS 2 nodes for video capture, image compression, decompression, conversion, and display.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
