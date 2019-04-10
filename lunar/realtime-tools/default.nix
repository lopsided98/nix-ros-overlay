
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-lunar-realtime-tools";
  version = "1.11.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/realtime_tools-release/archive/release/lunar/realtime_tools/1.11.0-0.tar.gz;
    sha256 = "006d73ce849843ddac35c6fa4f317ffe87214a0c74055863abd39c9a04719e2d";
  };

  buildInputs = [ roscpp rospy ];
  propagatedBuildInputs = [ roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tools that can be used from a hard
    realtime thread, without breaking the realtime behavior.  The
    tools currently only provides the realtime publisher, which makes
    it possible to publish messages to a ROS topic from a realtime
    thread. We plan to add a basic implementation of a realtime
    buffer, to make it possible to get data from a (non-realtime)
    topic callback into the realtime loop. Once the lockfree buffer is
    created, the realtime publisher will start using it, which will
    result in major API changes for the realtime publisher (removal of
    all lock methods).'';
    #license = lib.licenses.BSD;
  };
}
