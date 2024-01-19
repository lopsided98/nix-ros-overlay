
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-polaris-can, dbw-polaris-description, dbw-polaris-joystick-demo, dbw-polaris-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-polaris";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/noetic/dbw_polaris/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "3321a0089daa1228791a43ac3392e738e983b271e5547813dac24f71e116d22e";
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
