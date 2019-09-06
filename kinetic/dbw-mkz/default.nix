
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, catkin, dbw-mkz-description, dbw-mkz-can, dbw-mkz-joystick-demo }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "86eec437e5acf5a125a5a31f7178fcecb09a9a2e4812c72249add0a6f48556ad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dbw-mkz-msgs dbw-mkz-description dbw-mkz-can dbw-mkz-joystick-demo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
