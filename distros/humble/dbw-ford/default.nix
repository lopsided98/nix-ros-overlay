
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, dbw-ford-can, dbw-ford-description, dbw-ford-joystick-demo, dbw-ford-msgs }:
buildRosPackage {
  pname = "ros-humble-dbw-ford";
  version = "2.1.16-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/humble/dbw_ford/2.1.16-1.tar.gz";
    name = "2.1.16-1.tar.gz";
    sha256 = "87b4ee68cb835ec92717a567acd0948ad6dd3e2c239878da8e80145ac5153895";
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
