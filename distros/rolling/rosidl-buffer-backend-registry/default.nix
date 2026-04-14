
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, pluginlib, rmw, rosidl-buffer, rosidl-buffer-backend, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer-backend-registry";
  version = "5.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer_backend_registry/5.1.4-2.tar.gz";
    name = "5.1.4-2.tar.gz";
    sha256 = "492eed0a6197e0a08a8158cd0b60e7bf012664f81225d7cab17160157b110a8a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common rosidl-buffer ];
  propagatedBuildInputs = [ pluginlib rmw rosidl-buffer-backend rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Backend discovery and plugin loading for ROS2 buffer types";
    license = with lib.licenses; [ asl20 ];
  };
}
