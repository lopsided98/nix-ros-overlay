
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-soem";
  version = "1.4.1000-r1";

  src = fetchurl {
    url = "https://github.com/mgruhler/soem-gbp/archive/release/kinetic/soem/1.4.1000-1.tar.gz";
    name = "1.4.1000-1.tar.gz";
    sha256 = "95fd563d3325a03a62544bf7b975f5df7225b7e98e463acf1df5977507b51104";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS wrapper for the Simple Open EtherCAT Master SOEM.
    This is an updated version of the original SOEM wrapper released into ROS now including
    the upstream Repo as a git subtree.'';
    license = with lib.licenses; [ gpl2 ];
  };
}
