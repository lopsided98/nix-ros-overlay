
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosnode, rtt-ros, catkin, rtt-rosclock, rtt-ros-msgs, rtt-rosdeployment, rtt-tf, rtt-rospack, rtt-roscomm, rtt-rosparam, rtt-actionlib, rtt-dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-lunar-rtt-ros-integration";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_ros_integration/2.9.2-1.tar.gz;
    sha256 = "563152c4621feeb9a89f4ce5ef2c9356ac50cdfae94bc948f311006fc652aafd";
  };

  propagatedBuildInputs = [ rtt-rosnode rtt-ros rtt-dynamic-reconfigure rtt-rosclock rtt-ros-msgs rtt-rosdeployment rtt-rospack rtt-roscomm rtt-rosparam rtt-actionlib rtt-tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains all software necessary to build systems using both Orocos and ROS infrastructures'';
    license = with lib.licenses; [ gpl1 bsdOriginal lgpl2 gpl1 ];
  };
}
