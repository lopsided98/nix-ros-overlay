
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer";
  version = "5.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer/5.3.2-1.tar.gz";
    name = "5.3.2-1.tar.gz";
    sha256 = "1357876697ced09e9b64d0993a9cebdfc852f2432daad86b7a54fdb59cff2f59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Core Buffer types and implementations for ROS2 native buffer feature.
    Provides Buffer container type with support for multiple memory backends (CPU, GPU, custom).";
    license = with lib.licenses; [ asl20 ];
  };
}
