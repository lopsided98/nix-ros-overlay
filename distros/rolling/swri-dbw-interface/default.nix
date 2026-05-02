
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-swri-dbw-interface";
  version = "3.8.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_dbw_interface/3.8.7-2.tar.gz";
    name = "3.8.7-2.tar.gz";
    sha256 = "e5abc01fa86aa4d60d537e2d98a76c3a4da0e4a4ea22a989e93f5fbd966d08c1";
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
