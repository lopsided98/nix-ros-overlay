
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, cmake-modules, rtt, libxml2, catkin, rostime, rtt-rosgraph-msgs, ocl, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rtt-rosclock";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_rosclock/2.9.1-0.tar.gz;
    sha256 = "7117194cb738361b859651998760d0082990f0b2b2b045633da239c42b2f4178";
  };

  propagatedBuildInputs = [ rtt-rosgraph-msgs rospack ocl cmake-modules rtt libxml2 rostime roscpp ];
  nativeBuildInputs = [ rospack cmake-modules rtt libxml2 catkin roscpp rtt-rosgraph-msgs ocl rostime ];

  meta = {
    description = ''This package provides an RTT plugin to access different time measurements on a realtime host.'';
    #license = lib.licenses.BSD;
  };
}
