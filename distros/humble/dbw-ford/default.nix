
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dbw-ford-can, dbw-ford-description, dbw-ford-joystick-demo, dbw-ford-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford";
  version = "2.1.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford/2.1.10-1.tar.gz";
    name = "2.1.10-1.tar.gz";
    sha256 = "8fb1bbf97d354ca29b5a411f068b9eb946c016735a01ea915718f1b7ea7b07b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ dbw-ford-can dbw-ford-description dbw-ford-joystick-demo dbw-ford-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
