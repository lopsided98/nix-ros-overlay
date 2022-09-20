
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-swri-dbw-interface";
  version = "3.4.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/galactic/swri_dbw_interface/3.4.1-1.tar.gz";
    name = "3.4.1-1.tar.gz";
    sha256 = "f682404f333dbb618ba90cbd8f3171d3607e086155e6981c8fc89e2937219457";
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
