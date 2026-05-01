
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-ros2-control-cmake";
  version = "0.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control_cmake-release/archive/release/lyrical/ros2_control_cmake/0.3.0-3.tar.gz";
    name = "0.3.0-3.tar.gz";
    sha256 = "6704aed371b83898f04a6e910397d6579d415fd387cd08bcdf9b70ed43c72c08";
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
