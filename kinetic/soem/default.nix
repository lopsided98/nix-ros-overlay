
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-soem";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/mgruhler/soem-gbp/archive/release/kinetic/soem/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "67e40cc25126e41f9cba65b6ff7e342531e893ea6f1e4666a97de09fba5baff4";
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
