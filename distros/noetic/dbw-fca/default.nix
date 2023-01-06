
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-fca-can, dbw-fca-description, dbw-fca-joystick-demo, dbw-fca-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-fca";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/noetic/dbw_fca/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "937e7500b7dd4c1d9fc1cdf5e810699cc6e53bf4f5aef6dbacbce8ee6a75a009";
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
