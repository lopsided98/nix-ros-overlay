
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-lyrical-keyboard-handler";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/lyrical/keyboard_handler/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "24286e0ff21420d2e3f14245fbc821a773ae30986360ab9e6b7b80345f335085";
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
