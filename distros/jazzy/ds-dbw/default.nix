
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ds-dbw-can, ds-dbw-joystick-demo, ds-dbw-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ds-dbw";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/jazzy/ds_dbw/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "4432ba52995dce0e01cc0ec1eeaef95cbd8e3002079126fea3633058d43ea4a0";
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
