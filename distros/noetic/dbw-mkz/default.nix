
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-mkz-can, dbw-mkz-description, dbw-mkz-joystick-demo, dbw-mkz-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-mkz";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/noetic/dbw_mkz/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "d7c670c10032cde9de5179ebcfc445a54abf4a68568625c059660f77a16fad6b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dbw-mkz-can dbw-mkz-description dbw-mkz-joystick-demo dbw-mkz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
