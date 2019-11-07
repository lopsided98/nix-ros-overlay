
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-gps-common";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gps_common/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "6c93231496ab9c5306b995bab4144a1db30024c62f7247f3cfb6efd96d617b2c";
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
