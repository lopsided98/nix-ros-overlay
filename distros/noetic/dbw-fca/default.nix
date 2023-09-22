
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-fca-can, dbw-fca-description, dbw-fca-joystick-demo, dbw-fca-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-fca";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/noetic/dbw_fca/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "c5458ac390ee0d9bc4924f069958956c365fcce23ff4e9c7eb3704e3e4746b68";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dbw-fca-can dbw-fca-description dbw-fca-joystick-demo dbw-fca-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
