
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-keyboard-handler";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/jazzy/keyboard_handler/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "b7977d93f39d4030640dde1a8890ceb1c9b3cda46a8ec32675bbe99c928883b1";
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
