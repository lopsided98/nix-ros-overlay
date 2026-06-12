
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-buffer";
  version = "5.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_buffer/5.2.1-1.tar.gz";
    name = "5.2.1-1.tar.gz";
    sha256 = "cec7604e080e488234536770033914279ba432cc0101396000a19ba7fcf33519";
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
