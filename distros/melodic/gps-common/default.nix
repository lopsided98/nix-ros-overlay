
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-filters, message-generation, message-runtime, nav-msgs, roscpp, rospy, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-gps-common";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/melodic/gps_common/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "246a8c02058dc011985b8ab9290ccc15d00cbd583c00f127bd4c4ce00526c437";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-filters message-runtime nav-msgs roscpp rospy sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''GPS messages and common routines for use in GPS drivers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
