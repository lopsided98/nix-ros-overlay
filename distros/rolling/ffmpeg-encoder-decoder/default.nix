
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-clang-format, ament-cmake-gtest, ament-cmake-ros, ament-lint-auto, ament-lint-common, cv-bridge, ffmpeg, opencv, pkg-config, rclcpp, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ffmpeg-encoder-decoder";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_encoder_decoder-release/archive/release/rolling/ffmpeg_encoder_decoder/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d3c77b91be457bde2542a7338cdaf90a087e9e8160180f07a5882995bf49ee71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros pkg-config ros-environment ];
  checkInputs = [ ament-cmake-clang-format ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge ffmpeg opencv opencv.cxxdev rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros pkg-config ros-environment ];

  meta = {
    description = "ROS2 convenience wrapper around ffmpeg for encoding/decoding";
    license = with lib.licenses; [ asl20 ];
  };
}
