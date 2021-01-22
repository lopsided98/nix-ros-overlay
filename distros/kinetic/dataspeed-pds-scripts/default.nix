
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-dataspeed-pds-scripts";
  version = "1.0.2";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/kinetic/dataspeed_pds_scripts/1.0.2-0.tar.gz";
    name = "1.0.2-0.tar.gz";
    sha256 = "aa9fb29eebfa3a402011be03bd2c68d40e57c5574aa5abd02524208170ad7dab";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dataspeed-pds-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test scripts to interface to the Dataspeed Inc. Power Distribution System (PDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
