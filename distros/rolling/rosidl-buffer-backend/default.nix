
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-rolling-rosidl-buffer-backend";
  version = "5.1.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_buffer_backend/5.1.4-2.tar.gz";
    name = "5.1.4-2.tar.gz";
    sha256 = "683bd9ce8b56d481b1d532482426b30c72449cf29d92dab76262a689a0b85327";
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
