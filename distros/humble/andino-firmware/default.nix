
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-andino-firmware";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_firmware/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "78742561f2cb6d2743e6dfa177e3a21d04092ca4925bdbb0814e03b58350bc70";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The andino_firmware package'';
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
