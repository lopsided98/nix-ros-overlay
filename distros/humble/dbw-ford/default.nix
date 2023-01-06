
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dbw-ford-can, dbw-ford-description, dbw-ford-joystick-demo, dbw-ford-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "bf6ad1f55a924173c15a56d8a3b559a3a0280c2c28acee148e2bc16fc2b67eb5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dbw-ford-can dbw-ford-description dbw-ford-joystick-demo dbw-ford-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
