
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-soem";
  version = "1.4.1003-r1";

  src = fetchurl {
    url = "https://github.com/mgruhler/soem-gbp/archive/release/melodic/soem/1.4.1003-1.tar.gz";
    name = "1.4.1003-1.tar.gz";
    sha256 = "e8935f21d07691ccd7340b353426a7d438e52643d81717093aab2064ea9778e9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the Simple Open EtherCAT Master SOEM.
    This is an updated version of the original SOEM wrapper released into ROS now including
    the upstream Repo as a git subtree.'';
    license = with lib.licenses; [ "GPLv2-with-linking-exception" ];
  };
}
