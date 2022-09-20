
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-sdl2-vendor";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/foxy/sdl2_vendor/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "8c0f11beb1954efd3666813c0669eb26ff686571792528a42e659480f0c8532a";
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
