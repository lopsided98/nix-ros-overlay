
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ds-dbw-can, ds-dbw-joystick-demo, ds-dbw-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ds-dbw";
  version = "2.3.11-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/jazzy/ds_dbw/2.3.11-1.tar.gz";
    name = "2.3.11-1.tar.gz";
    sha256 = "3985b19bfc836c7ee4f40ba8d9de7352fe349fef7b2580025df7eec651888837";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ds-dbw-can ds-dbw-joystick-demo ds-dbw-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Interface to the Dataspeed Inc. Drive-By-Wire kits";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
