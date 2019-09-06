
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-gps-common";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gps_common/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "ff84f3a082027035d2363ffcda76b01b2ac06432da53ccc6ee73898d3c502a03";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs message-filters nav-msgs message-generation rospy std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-filters nav-msgs message-runtime rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''GPS messages and common routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
