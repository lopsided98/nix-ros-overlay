
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-rosclock, rtt-actionlib-msgs, catkin, actionlib, actionlib-msgs, roscpp, rtt-ros, rtt-roscomm }:
buildRosPackage {
  pname = "ros-kinetic-rtt-actionlib";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_actionlib/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "ef743ad3d15721cd8ed9da6b32e29c3d951d414d6b8215f4abc45cc258783f72";
  };

  buildType = "catkin";
  buildInputs = [ rtt-rosclock rtt-actionlib-msgs actionlib actionlib-msgs roscpp rtt-ros rtt-roscomm ];
  propagatedBuildInputs = [ rtt-rosclock rtt-actionlib-msgs actionlib actionlib-msgs roscpp rtt-ros rtt-roscomm ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_actionlib package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
