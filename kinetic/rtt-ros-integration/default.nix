
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-tf, rtt-rosclock, rtt-actionlib, rtt-rospack, rtt-rosdeployment, rtt-rosparam, rtt-ros-msgs, catkin, rtt-dynamic-reconfigure, rtt-ros, rtt-roscomm, rtt-rosnode }:
buildRosPackage {
  pname = "ros-kinetic-rtt-ros-integration";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_ros_integration/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "08dd5b4d6a968004ed299ab0e2f2164852ec13092916d3d6741073e2680187cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rtt-tf rtt-rosclock rtt-actionlib rtt-rospack rtt-rosdeployment rtt-rosparam rtt-ros-msgs rtt-dynamic-reconfigure rtt-ros rtt-roscomm rtt-rosnode ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains all software necessary to build systems using both Orocos and ROS infrastructures'';
    license = with lib.licenses; [ gpl1 bsdOriginal lgpl2 gpl1 ];
  };
}
