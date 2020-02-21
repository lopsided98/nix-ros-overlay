
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-mkz-can, dbw-mkz-description, dbw-mkz-joystick-demo, dbw-mkz-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz";
  version = "1.2.7-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz/1.2.7-1.tar.gz";
    name = "1.2.7-1.tar.gz";
    sha256 = "17df7b95f4ecf3354709c705ade105120af4775cbb2afa6fe9dce16ad67e6667";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dbw-mkz-can dbw-mkz-description dbw-mkz-joystick-demo dbw-mkz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
