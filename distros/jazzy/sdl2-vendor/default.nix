
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL2, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-sdl2-vendor";
  version = "3.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/joystick_drivers-release/archive/release/jazzy/sdl2_vendor/3.3.0-3.tar.gz";
    name = "3.3.0-3.tar.gz";
    sha256 = "42076192d46557d6bb18ba16ab2f2202855ff781d824666c5f1d35ecbc32b371";
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
