
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer";
  version = "5.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer/5.3.0-1.tar.gz";
    name = "5.3.0-1.tar.gz";
    sha256 = "b6e8828db30cfe43dd039626642002bdfa72d3978846c580c81dfc6974234fa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Core Buffer types and implementations for ROS2 native buffer feature.
    Provides Buffer container type with support for multiple memory backends (CPU, GPU, custom).";
    license = with lib.licenses; [ asl20 ];
  };
}
