
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-sdl2-vendor";
  version = "3.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/rolling/sdl2_vendor/3.3.0-2.tar.gz";
    name = "3.3.0-2.tar.gz";
    sha256 = "46418f4f0403bb228d4367fa7b3d6964dfae83fb5ee7f11d225880417b92fdf1";
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
