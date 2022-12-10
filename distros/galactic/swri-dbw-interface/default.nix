
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-swri-dbw-interface";
  version = "3.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/galactic/swri_dbw_interface/3.5.1-1.tar.gz";
    name = "3.5.1-1.tar.gz";
    sha256 = "99ae75a7ef7bc1b77c6dc62d2a4c2d83247747031f0709f9ba6e580a757909d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
