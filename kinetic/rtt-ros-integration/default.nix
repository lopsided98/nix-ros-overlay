
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosnode, rtt-ros, catkin, rtt-rosclock, rtt-ros-msgs, rtt-rosdeployment, rtt-tf, rtt-rospack, rtt-roscomm, rtt-rosparam, rtt-actionlib, rtt-dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-rtt-ros-integration";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros_integration/2.9.1-0.tar.gz;
    sha256 = "c656886d1a0d4cc9521c7f8fa691f90f514e3c8b4f77e27f9971e61b425b780c";
  };

  propagatedBuildInputs = [ rtt-rosnode rtt-ros rtt-dynamic-reconfigure rtt-rosclock rtt-ros-msgs rtt-rosdeployment rtt-rospack rtt-roscomm rtt-rosparam rtt-actionlib rtt-tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains all software necessary to build systems using both Orocos and ROS infrastructures'';
    #license = lib.licenses.GPL;
  };
}
