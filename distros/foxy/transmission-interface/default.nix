
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, hardware-interface, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-foxy-transmission-interface";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/bmagyar/ros2_control-release/archive/release/foxy/transmission_interface/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "53fecb70ea5c5892e719d0443d681e76ce9beceb00fc7c4c9739c0fd0aeccbfe";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''transmission_interface contains data structures for representing mechanical transmissions, methods for propagating values between actuator and joint spaces and tooling to support this.'';
    license = with lib.licenses; [ asl20 ];
  };
}
