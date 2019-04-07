
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-melodic-realtime-tools";
  version = "1.13.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/realtime_tools-release/archive/release/melodic/realtime_tools/1.13.1-0.tar.gz;
    sha256 = "399aca3a72c59e2bd7bfc508e7dca8cb53d95ee76f067f4b11ecdaa49ea7e225";
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
