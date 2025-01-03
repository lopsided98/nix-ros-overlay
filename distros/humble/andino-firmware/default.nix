
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-andino-firmware";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/andino-release/archive/release/humble/andino_firmware/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "8e01d642815103f9aec60c6ea8b71f6ddcf3d6f369e31916ccbc43028135742c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The andino_firmware package";
    license = with lib.licenses; [ "BSD-Clause-3" ];
  };
}
