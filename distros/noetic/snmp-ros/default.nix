
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-snmp-ros";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ctu-vras/snmp_ros-release/archive/release/noetic/snmp_ros/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "ddd3dda2ea56537f872a58d7334919e986055d73f764bb4f4c26faa9426a8489";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.pysnmp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Utilities for working with SNMP from ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
