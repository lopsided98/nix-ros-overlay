
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, pluginlib, rmw, rosidl-buffer, rosidl-buffer-backend, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer-backend-registry";
  version = "5.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer_backend_registry/5.3.2-1.tar.gz";
    name = "5.3.2-1.tar.gz";
    sha256 = "1aea7414276866385bbda315b26181abfb34d1253ac903c2f87da2a50a564397";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-buffer ];
  propagatedBuildInputs = [ pluginlib rmw rosidl-buffer-backend rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Backend discovery and plugin loading for ROS2 buffer types";
    license = with lib.licenses; [ asl20 ];
  };
}
