
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-lyrical-swri-dbw-interface";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/lyrical/swri_dbw_interface/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "e54ce73c410728007e6021180d7c3583c8beba9ea4b84f074f29018932074ecd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package provides documentation on common interface conventions for
    drive-by-wire systems.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
