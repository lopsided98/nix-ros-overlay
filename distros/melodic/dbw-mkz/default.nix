
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-mkz-can, dbw-mkz-description, dbw-mkz-joystick-demo, dbw-mkz-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "5dd8e343968cc64156151c36c2f52a2055217296347bac4a24eefaf2b5d3fd53";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dbw-mkz-can dbw-mkz-description dbw-mkz-joystick-demo dbw-mkz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
