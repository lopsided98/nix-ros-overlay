
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-sdl2-vendor";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/humble/sdl2_vendor/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "a68160fd4e6de60a99af0fba39dfba31aac48b6663e8e86b746b2a4bded079d3";
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
