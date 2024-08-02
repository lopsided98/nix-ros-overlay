
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ds-dbw-can, ds-dbw-joystick-demo, ds-dbw-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ds-dbw";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/jazzy/ds_dbw/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "7d6b75518160a7562cf6b51c2c05b450309ecefa2b2e71c1a46730bfb2f4fa1e";
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
