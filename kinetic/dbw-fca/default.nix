
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-fca-msgs, catkin, dbw-fca-joystick-demo, dbw-fca-can, dbw-fca-description }:
buildRosPackage {
  pname = "ros-kinetic-dbw-fca";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/kinetic/dbw_fca/1.0.1-0.tar.gz;
    sha256 = "b6f79a37e2459ffb12d0243ed9c1c71f6334118b8924c36a5e3f62525b48b22a";
  };

  propagatedBuildInputs = [ dbw-fca-joystick-demo dbw-fca-description dbw-fca-msgs dbw-fca-can ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    #license = lib.licenses.BSD;
  };
}
