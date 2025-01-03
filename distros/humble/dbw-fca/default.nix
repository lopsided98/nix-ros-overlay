
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dbw-fca-can, dbw-fca-description, dbw-fca-joystick-demo, dbw-fca-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-fca";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_fca/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "9e8943cc6daf2e1afb3c1b52ab38f899f9dc0274d473a200c15d715002741b75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dbw-fca-can dbw-fca-description dbw-fca-joystick-demo dbw-fca-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
