
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-soem";
  version = "1.4.1002-r1";

  src = fetchurl {
    url = "https://github.com/mgruhler/soem-gbp/archive/release/noetic/soem/1.4.1002-1.tar.gz";
    name = "1.4.1002-1.tar.gz";
    sha256 = "5fab12cec09557010dead08ba8985f5bc6d8c6e8b5d02bac3ff05138a20f82ed";
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
