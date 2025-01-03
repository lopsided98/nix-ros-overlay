
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ds-dbw-can, ds-dbw-joystick-demo, ds-dbw-msgs }:
buildRosPackage {
  pname = "ros-humble-ds-dbw";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/ds_dbw/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "a522df4b95b257daf31faa79a1eee5ae922a54525068e91fda6fd553f1af115b";
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
