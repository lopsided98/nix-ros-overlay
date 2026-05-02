
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer-backend";
  version = "5.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer_backend/5.2.0-2.tar.gz";
    name = "5.2.0-2.tar.gz";
    sha256 = "4e37043d14629653041b50496c5409948e9eff322bb071cfb65682bc435a86fb";
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
