
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dataspeed-pds-msgs, rospy }:
buildRosPackage {
  pname = "ros-noetic-dataspeed-pds-scripts";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_pds-release/archive/release/noetic/dataspeed_pds_scripts/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "872aaddc11dad62f89dc85b08b4060bc082dd0a4e712f3d4d23be388adcff8ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dataspeed-pds-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Test scripts to interface to the Dataspeed Inc. Intelligent Power Distribution System (iPDS)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
