
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-can, dataspeed-pds-msgs, dataspeed-pds-scripts }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d13c93b88a446da5990f052ca82a1aa28c3f106f0c110a9becc853e54496aa0b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-pds-can dataspeed-pds-msgs dataspeed-pds-scripts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
