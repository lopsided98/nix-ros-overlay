
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-swri-dbw-interface";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/foxy/swri_dbw_interface/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "7c1bd224d9dc07d2ff4da57a93f0fbb3db014eb4d4a8384c8fea794af8884f60";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
