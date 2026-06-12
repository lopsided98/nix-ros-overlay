
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer-backend";
  version = "5.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer_backend/5.3.1-2.tar.gz";
    name = "5.3.1-2.tar.gz";
    sha256 = "2e2a68e6228a2d28353b0f7a55ccc537625c627b7f9eb6d94659c5ed58d4f9e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rmw ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Buffer backend interface for ROS2 buffer types";
    license = with lib.licenses; [ asl20 ];
  };
}
