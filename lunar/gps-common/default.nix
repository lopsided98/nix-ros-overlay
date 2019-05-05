
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-filters, nav-msgs, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-gps-common";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/lunar/gps_common/0.2.0-0.tar.gz;
    sha256 = "cff01df69cf454797fe357342d38b04cbf534d4add4b1c833353324c288743d4";
  };

  buildInputs = [ sensor-msgs message-filters nav-msgs message-generation rospy std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs message-filters nav-msgs message-runtime rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''GPS messages and common routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
