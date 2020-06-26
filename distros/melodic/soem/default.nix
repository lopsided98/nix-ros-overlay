
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-soem";
  version = "1.4.1002-r1";

  src = fetchurl {
    url = "https://github.com/mgruhler/soem-gbp/archive/release/melodic/soem/1.4.1002-1.tar.gz";
    name = "1.4.1002-1.tar.gz";
    sha256 = "1f9dcfda3ff941a9d8d5a346fe03c8b880f6aae2f50d23ea5bb57e1233d7b1c2";
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
