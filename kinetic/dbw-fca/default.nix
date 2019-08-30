
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, catkin, dbw-fca-joystick-demo, dbw-fca-can, dbw-fca-description }:
buildRosPackage {
  pname = "ros-kinetic-dbw-fca";
  version = "1.0.6-r1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/dbw_fca/1.0.6-1.tar.gz;
    sha256 = "ae3b5d94da017f7fc4de9e01f06a52d852a61146cd0fc881144a07bf4ed74af3";
  };

  propagatedBuildInputs = [ dbw-fca-joystick-demo dbw-fca-description dbw-fca-msgs dbw-fca-can ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
