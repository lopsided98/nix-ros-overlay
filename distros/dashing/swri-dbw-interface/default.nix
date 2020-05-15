
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-swri-dbw-interface";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_dbw_interface/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "6dd35433f51a7ab2a4bf056e69b190b8a44740c68cc4ba6f4b3af5f20ff9e777";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
