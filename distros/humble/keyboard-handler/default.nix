
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-keyboard-handler";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/humble/keyboard_handler/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "37785dce342482068575a9d9c39960ab1711df0262f2cdd2d8e0b0872f182faf";
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
