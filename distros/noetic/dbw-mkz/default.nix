
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-mkz-can, dbw-mkz-description, dbw-mkz-joystick-demo, dbw-mkz-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-mkz";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/noetic/dbw_mkz/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "fc65c579bfe0aedec995127a4098202a9f28da6bcc4aed3d00892a9edcb1e698";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dbw-mkz-can dbw-mkz-description dbw-mkz-joystick-demo dbw-mkz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
