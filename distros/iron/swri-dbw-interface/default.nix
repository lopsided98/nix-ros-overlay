
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-iron-swri-dbw-interface";
  version = "3.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/iron/swri_dbw_interface/3.7.1-1.tar.gz";
    name = "3.7.1-1.tar.gz";
    sha256 = "7498a426e1a7d4782541bda0fb58e62c1323390d4a329fae54473fdf554e59b0";
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
