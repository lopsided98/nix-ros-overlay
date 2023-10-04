
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-polaris-can, dbw-polaris-description, dbw-polaris-joystick-demo, dbw-polaris-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "0404d2c65c202e92114a340e6573db501fe758c0337aa1ab3e128e52f7e4f64f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dbw-polaris-can dbw-polaris-description dbw-polaris-joystick-demo dbw-polaris-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Polaris GEM/Ranger/RZR DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
