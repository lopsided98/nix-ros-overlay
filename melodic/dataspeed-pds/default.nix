
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataspeed-pds-msgs, catkin, dataspeed-pds-scripts, dataspeed-pds-can }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds/1.0.2-0.tar.gz;
    sha256 = "d69d2b28ac8d0d207b3873acf559044a47c3b99d20fd20f01de6aa51cfe4feed";
  };

  propagatedBuildInputs = [ dataspeed-pds-msgs dataspeed-pds-scripts dataspeed-pds-can ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
