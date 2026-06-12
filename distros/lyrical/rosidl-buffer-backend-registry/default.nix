
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, pluginlib, rmw, rosidl-buffer, rosidl-buffer-backend, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rosidl-buffer-backend-registry";
  version = "5.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/lyrical/rosidl_buffer_backend_registry/5.2.1-1.tar.gz";
    name = "5.2.1-1.tar.gz";
    sha256 = "8a50243c0a0354b3e9bc04603bf408fd6fbc103836bca55b26cadf9e2b87dea7";
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
