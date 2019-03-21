
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, catkin, dbw-mkz-description, dbw-mkz-can, dbw-mkz-joystick-demo }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz/1.1.1-0.tar.gz;
    sha256 = "a4531c8d8bbdb6ef3afffc027dd8399aa74cebe90ff43153b1197b45e447ef4d";
  };

  propagatedBuildInputs = [ dbw-mkz-msgs dbw-mkz-description dbw-mkz-can dbw-mkz-joystick-demo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    #license = lib.licenses.BSD;
  };
}
