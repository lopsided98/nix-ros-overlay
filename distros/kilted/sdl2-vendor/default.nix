
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-sdl2-vendor";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/kilted/sdl2_vendor/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "7daf6f14e9efbea5f9286d556a330087a4efb5d9c386ce3ee861865c7b9abff1";
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
