
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-gps-common";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/kinetic/gps_common/0.2.0-0.tar.gz;
    sha256 = "3827c093987666c0b823d42b095e3d9e7fbb6622333f14b0a62c9f7a54f0e209";
  };

  buildInputs = [ nav-msgs message-generation rospy std-msgs sensor-msgs roscpp message-filters ];
  propagatedBuildInputs = [ nav-msgs message-runtime rospy std-msgs sensor-msgs roscpp message-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''GPS messages and common routines for use in GPS drivers'';
    #license = lib.licenses.BSD;
  };
}
