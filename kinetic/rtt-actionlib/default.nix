
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-ros, actionlib-msgs, catkin, rtt-rosclock, rtt-actionlib-msgs, actionlib, rtt-roscomm, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rtt-actionlib";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_actionlib/2.9.1-0.tar.gz;
    sha256 = "efa5c44dbfa36a704a046c9c2d9012b3aefb1c0c727515bc0ec89be86ab83961";
  };

  propagatedBuildInputs = [ rtt-rosclock rtt-actionlib-msgs rtt-ros actionlib-msgs actionlib rtt-roscomm roscpp ];
  nativeBuildInputs = [ rtt-rosclock rtt-actionlib-msgs rtt-ros actionlib-msgs actionlib rtt-roscomm catkin roscpp ];

  meta = {
    description = ''The rtt_actionlib package'';
    #license = lib.licenses.BSD;
  };
}
