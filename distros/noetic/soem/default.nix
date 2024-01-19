
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-soem";
  version = "1.4.1003-r1";

  src = fetchurl {
    url = "https://github.com/mgruhler/soem-gbp/archive/release/noetic/soem/1.4.1003-1.tar.gz";
    name = "1.4.1003-1.tar.gz";
    sha256 = "f16d0ecd3ce7b6739fb573459214670abcd5f101454fc1225369aa7fe86b2806";
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
