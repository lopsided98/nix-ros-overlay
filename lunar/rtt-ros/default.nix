
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rtt, libxml2, catkin, rostime, ocl, roslib }:
buildRosPackage {
  pname = "ros-lunar-rtt-ros";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_ros/2.9.2-1.tar.gz;
    sha256 = "ca99e836f4ebd3e230d359f9ea0fb7df2e43e579e297e584ffcd2412c9b639ef";
  };

  buildInputs = [ rospack rtt libxml2 roslib ocl rostime ];
  propagatedBuildInputs = [ rospack rtt libxml2 roslib ocl rostime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides an RTT plugin to add a ROS node to the RTT process,
    as well as several wrapper scripts to enable roslaunching of orocos
    programs.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
