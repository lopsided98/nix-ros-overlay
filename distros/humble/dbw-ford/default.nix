
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dbw-ford-can, dbw-ford-description, dbw-ford-joystick-demo, dbw-ford-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "87de75e12f2f16cfc4e8c82f746f864dc957732157f72e3f2ad0e910f67de620";
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
