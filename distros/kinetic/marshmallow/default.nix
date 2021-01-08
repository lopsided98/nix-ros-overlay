
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-pip, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-marshmallow";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/asmodehn/marshmallow-rosrelease/archive/release/kinetic/marshmallow/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "2f7e9fef89263703fb78c0503becd0f1bd6b3d24f8b6888e4c7248275359153d";
  };

  buildType = "catkin";
  buildInputs = [ catkin-pip ];
  checkInputs = [ pythonPackages.pytest pythonPackages.pytz ];
  propagatedBuildInputs = [ pythonPackages.dateutil pythonPackages.simplejson ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A lightweight library for converting complex objects to and from simple Python datatypes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
