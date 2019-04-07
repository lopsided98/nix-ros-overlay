
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rtt, libxml2, catkin, rostime, ocl, roslib }:
buildRosPackage {
  pname = "ros-kinetic-rtt-ros";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros/2.9.1-0.tar.gz;
    sha256 = "a497f365516b0ab256de4149374271e8f9d8a58a57b0912dce952a418db8eede";
  };

  buildInputs = [ roslib rospack ocl rtt libxml2 rostime ];
  propagatedBuildInputs = [ roslib rospack ocl rtt libxml2 rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT plugin to add a ROS node to the RTT process,
    as well as several wrapper scripts to enable roslaunching of orocos
    programs.'';
    #license = lib.licenses.BSD;
  };
}
