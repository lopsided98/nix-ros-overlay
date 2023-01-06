
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-polaris-can, dbw-polaris-description, dbw-polaris-joystick-demo, dbw-polaris-msgs }:
buildRosPackage {
  pname = "ros-melodic-dbw-polaris";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_polaris_ros-release/archive/release/melodic/dbw_polaris/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a031935a5ead635401d3ee0eb012cfe46b9cca2cc8776dccaac01e96a9d1117a";
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
