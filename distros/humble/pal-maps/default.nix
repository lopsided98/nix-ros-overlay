
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto }:
buildRosPackage {
  pname = "ros-humble-pal-maps";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_maps-release/archive/release/humble/pal_maps/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "df5cf5c35cb3ca9aada6d74a51fbfbe599a88a6d5125e24b19fccb978443e16b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Public Maps used for the Navigation of PAL Robotics robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
