
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-sdl2-vendor";
  version = "3.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/galactic/sdl2_vendor/3.0.0-5.tar.gz";
    name = "3.0.0-5.tar.gz";
    sha256 = "bbc720e13309dd0729ae69c65b7248a0ebacd497b376335fdcad8fd7a03bddf5";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ SDL2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor library for SDL2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
