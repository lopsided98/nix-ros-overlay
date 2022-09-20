
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-sdl2-vendor";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/galactic/sdl2_vendor/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "79ee99025f6823c0e98ed467bbaf9c9ad1a6329b357e133558a8f9486a3c7446";
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
