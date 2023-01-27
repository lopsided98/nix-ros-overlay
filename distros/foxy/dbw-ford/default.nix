
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dbw-ford-can, dbw-ford-description, dbw-ford-joystick-demo, dbw-ford-msgs }:
buildRosPackage {
  pname = "ros-foxy-dbw-ford";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/dbw_ford/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "10d661867b5564d28a841727b65b50fe1c61991a6312ca35da37359a604c6c35";
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
