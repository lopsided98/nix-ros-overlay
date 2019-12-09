
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, dbw-fca-joystick-demo, dbw-fca-description, catkin, dbw-fca-can }:
buildRosPackage {
  pname = "ros-melodic-dbw-fca";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/melodic/dbw_fca/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "688c0c01e19c4499df112a404081a453bf81aab02905c4b567d7b3d0968be36a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dbw-fca-description dbw-fca-msgs dbw-fca-joystick-demo dbw-fca-can ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
