
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-sdl2-vendor";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/foxy/sdl2_vendor/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "2c886f34e6e193fbac370bd8cd3da4f687bc19f6b898bd72fe8b1e540c52cbb4";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ SDL2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Vendor library for SDL2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
