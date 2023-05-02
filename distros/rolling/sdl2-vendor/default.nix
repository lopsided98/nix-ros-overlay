
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-sdl2-vendor";
  version = "3.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/sdl2_vendor/3.1.0-3.tar.gz";
    name = "3.1.0-3.tar.gz";
    sha256 = "5ab3fc262ea3ae9c998b0ccba911e4ef4154d749e6ea854543160f489d7cbf39";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ SDL2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor library for SDL2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
