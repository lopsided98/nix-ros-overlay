
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common, hardware-interface, tinyxml2-vendor }:
buildRosPackage {
  pname = "ros-foxy-transmission-interface";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/foxy/transmission_interface/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "7a444b9341480d6b69efc16c0bd5246a0752e37d61aa26b8581d07c7472346ba";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ hardware-interface tinyxml2-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''transmission_interface contains data structures for representing mechanical transmissions, methods for propagating values between actuator and joint spaces and tooling to support this.'';
    license = with lib.licenses; [ asl20 ];
  };
}
