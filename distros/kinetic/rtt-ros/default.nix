
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libxml2, ocl, roslib, rospack, rostime, rtt }:
buildRosPackage {
  pname = "ros-kinetic-rtt-ros";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "145d22f7b30abeac817ac3b4d388338c6318766dfeec6d5aab6a7ae5bf574e11";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libxml2 ocl roslib rospack rostime rtt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT plugin to add a ROS node to the RTT process,
    as well as several wrapper scripts to enable roslaunching of orocos
    programs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
