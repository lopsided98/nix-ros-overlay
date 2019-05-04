
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, catkin, dbw-mkz-description, dbw-mkz-can, dbw-mkz-joystick-demo }:
buildRosPackage {
  pname = "ros-kinetic-dbw-mkz";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/kinetic/dbw_mkz/1.1.1-0.tar.gz;
    sha256 = "c10af97e0c08e042a89d6a9a3af13a58b6b621ab6cb4751cb7bd2b1951b82aac";
  };

  propagatedBuildInputs = [ dbw-mkz-msgs dbw-mkz-description dbw-mkz-can dbw-mkz-joystick-demo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
