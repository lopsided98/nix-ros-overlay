
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-iron-keyboard-handler";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/iron/keyboard_handler/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "050939c3d6e503978864d0071a5b0edacb7e1007a70ecd59c13719b5779fa49d";
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
