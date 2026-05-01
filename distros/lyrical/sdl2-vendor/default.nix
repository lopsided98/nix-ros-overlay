
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-sdl2-vendor";
  version = "3.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/lyrical/sdl2_vendor/3.3.0-4.tar.gz";
    name = "3.3.0-4.tar.gz";
    sha256 = "eecbc093f9c652cbd2552471716309f24b4ebeaf3a3de5d080d497c19c5b4a69";
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
