
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dataspeed-pds-msgs, catkin, rospy }:
buildRosPackage {
  pname = "ros-melodic-dataspeed-pds-scripts";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/melodic/dataspeed_pds_scripts/1.0.2-0.tar.gz;
    sha256 = "9affa7c314ddfe3804829e680b0889aef2e5b9b17c0ca0334cdf0b647ab9f666";
  };

  propagatedBuildInputs = [ dataspeed-pds-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test scripts to interface to the Dataspeed Inc. Power Distribution System (PDS)'';
    #license = lib.licenses.BSD;
  };
}
