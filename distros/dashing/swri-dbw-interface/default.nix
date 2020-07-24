
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-swri-dbw-interface";
  version = "3.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/dashing/swri_dbw_interface/3.3.0-1.tar.gz";
    name = "3.3.0-1.tar.gz";
    sha256 = "623f4038d4b87877d8e8cb1f7ce60cb17980cdbcaca9d0aaa7639d663e1fbf7f";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
