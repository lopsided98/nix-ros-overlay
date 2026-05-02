
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-keyboard-handler";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/rolling/keyboard_handler/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "6357e9acf246dadef6670a516a0ad272a52a7cfdb8098f2a1ea517e0ab1ed00f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Handler for input from keyboard";
    license = with lib.licenses; [ asl20 ];
  };
}
