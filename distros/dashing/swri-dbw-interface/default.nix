
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-swri-dbw-interface";
  version = "3.0.5-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_dbw_interface/3.0.5-2.tar.gz";
    name = "3.0.5-2.tar.gz";
    sha256 = "fae8828419a7a45b97df0f7605adf9cb94c0cec06edf6877b43f7b029bef7320";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
