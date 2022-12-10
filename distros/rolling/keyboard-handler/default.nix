
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-keyboard-handler";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/rolling/keyboard_handler/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "051706198cefe0e782f523f023edd413ee42af90064fc3d3c4581758519cb0ec";
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
