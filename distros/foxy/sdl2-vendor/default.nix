
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-sdl2-vendor";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/foxy/sdl2_vendor/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "f9612cb3f4bac0857cb1d2cdfbb91099780d2965f920ce0a1425806e6a6d5fc9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ SDL2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor library for SDL2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
