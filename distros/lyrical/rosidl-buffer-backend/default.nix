
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-buffer-backend";
  version = "5.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_buffer_backend/5.2.0-3.tar.gz";
    name = "5.2.0-3.tar.gz";
    sha256 = "26e1ac5f43901a53a316dc01ca9f21e655494d40460ea699330b42a66ce94101";
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
