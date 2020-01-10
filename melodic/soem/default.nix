
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-soem";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/mgruhler/soem-gbp/archive/release/melodic/soem/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "cc03d89d73e3fc1a7914451e6f890065a30b74d6aed49983b743f57db73c4a80";
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
