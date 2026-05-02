
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-sdl2-vendor";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/sdl2_vendor/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "3803eb8f97cdc78596548a998faaaf542ab4fdd7fd7e5f32fa55e4d343f1d438";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ SDL2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor library for SDL2.";
    license = with lib.licenses; [ asl20 ];
  };
}
