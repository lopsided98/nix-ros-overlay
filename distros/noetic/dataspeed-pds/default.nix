
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-can, dataspeed-pds-msgs, dataspeed-pds-scripts }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-pds";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/dataspeed_pds/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "2c3c2765a77742cbacba3fadbe13753c96de4e25eeacc932d85bbcaaccb05293";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-pds-can dataspeed-pds-msgs dataspeed-pds-scripts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
