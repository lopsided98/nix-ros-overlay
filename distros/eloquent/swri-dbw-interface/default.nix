
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-swri-dbw-interface";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/eloquent/swri_dbw_interface/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "f706897cf65196c0a3fdcb1f53900aeaa926813298f8e3707574f3ef8e1519b3";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
