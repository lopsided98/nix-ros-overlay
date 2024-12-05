
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pal-maps";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_maps-release/archive/release/humble/pal_maps/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "3bb7cdee3302f6cfc694b19fa8005eb7b37743654b79b2eaa8a806db437cec22";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Public Maps used for the Navigation of PAL Robotics robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
