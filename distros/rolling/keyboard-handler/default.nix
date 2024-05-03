
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-rolling-keyboard-handler";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/rolling/keyboard_handler/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "9e656595b43591bf5f91d0bdaef8d192a6759a23d1f8899e7ca5d2204ddf1cb1";
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
