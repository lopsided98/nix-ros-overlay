
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-keyboard-handler";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/rolling/keyboard_handler/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "d511eeec461dee499ea00b6b8e07281c123936a9ad0a1c8dea1e109e793abadd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Handler for input from keyboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
