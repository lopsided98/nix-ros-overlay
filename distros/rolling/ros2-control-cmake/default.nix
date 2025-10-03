
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-ros2-control-cmake";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control_cmake-release/archive/release/rolling/ros2_control_cmake/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "4e985cd4e112aac3dc6098c7bc75b8d32231702f9876a0196e74b4d29cbd5444";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides CMake macros used by the ros2_control framework";
    license = with lib.licenses; [ asl20 ];
  };
}
