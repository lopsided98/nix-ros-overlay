
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-can, dataspeed-pds-lcm, dataspeed-pds-msgs, dataspeed-pds-scripts }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "9ecd284e28b242f31169b0f08fbe166ef061106c77440b474f7a448062b3fb6c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-pds-can dataspeed-pds-lcm dataspeed-pds-msgs dataspeed-pds-scripts ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Interface to the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
