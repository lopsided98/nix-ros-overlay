
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pal-maps";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pal_maps-release/archive/release/humble/pal_maps/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "d2b2b245bf3b27e36227b14a711f2e2c06f161ab2044341424d33beac02f74e6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Public Maps used for the Navigation of PAL Robotics robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
