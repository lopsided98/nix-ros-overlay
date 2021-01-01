
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-fca-can, dbw-fca-description, dbw-fca-joystick-demo, dbw-fca-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-fca";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/noetic/dbw_fca/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "64c1fcc3be602d70b046fa88fd7a08330236e66ca3e70a3d22beffbdaf315974";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dbw-fca-can dbw-fca-description dbw-fca-joystick-demo dbw-fca-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
