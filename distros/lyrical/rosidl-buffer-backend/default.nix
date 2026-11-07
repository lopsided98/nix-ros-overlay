
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rmw }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-buffer-backend";
  version = "5.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_buffer_backend/5.2.2-1.tar.gz";
    name = "5.2.2-1.tar.gz";
    sha256 = "bf3ce5639d5fbfb2c46c95454e79c01be387348594d07cf993be59e803dc761b";
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
