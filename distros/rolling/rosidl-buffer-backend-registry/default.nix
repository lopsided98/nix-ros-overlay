
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rmw, rosidl-buffer, rosidl-buffer-backend, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer-backend-registry";
  version = "5.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer_backend_registry/5.2.0-2.tar.gz";
    name = "5.2.0-2.tar.gz";
    sha256 = "5baf3f4277bfa8aa1c69d91df6041df85c73fe2d740b5f5a0c16a13fcdfaab47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-buffer ];
  propagatedBuildInputs = [ pluginlib rmw rosidl-buffer-backend rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Backend discovery and plugin loading for ROS2 buffer types";
    license = with lib.licenses; [ asl20 ];
  };
}
