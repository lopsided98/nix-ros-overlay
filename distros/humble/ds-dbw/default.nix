
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ds-dbw-can, ds-dbw-joystick-demo, ds-dbw-msgs }:
buildRosPackage {
  pname = "ros-humble-ds-dbw";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/ds_dbw/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "ae1d357e89cb024d70a5658a019897f6a4024b6ddeeb7510547d3d2d5f76eb05";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ds-dbw-can ds-dbw-joystick-demo ds-dbw-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Drive-By-Wire kits'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
