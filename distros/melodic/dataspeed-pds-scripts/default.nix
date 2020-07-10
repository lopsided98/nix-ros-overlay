
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-msgs, rospy }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-scripts";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_scripts/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d2c468585fbff4ecb19770cc8d57df66242afdc675d37a5916a42098821d1836";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-pds-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test scripts to interface to the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
