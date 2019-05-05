
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, catkin, dbw-fca-joystick-demo, dbw-fca-can, dbw-fca-description }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca/1.0.1-0.tar.gz;
    sha256 = "971b88a77e2907f4fcd3cff91033cc784bdceb4f51d784bd9f01826128cd3c31";
  };

  propagatedBuildInputs = [ dbw-fca-joystick-demo dbw-fca-description dbw-fca-msgs dbw-fca-can ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
