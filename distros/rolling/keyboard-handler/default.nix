
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-keyboard-handler";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/rolling/keyboard_handler/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "5212a677561f2688a0d52758f6772e1c360ff19ce59082dc17ca2c3adfc04505";
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
