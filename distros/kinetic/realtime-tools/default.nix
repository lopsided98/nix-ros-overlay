
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rospy }:
buildRosPackage {
  pname = "ros-kinetic-realtime-tools";
  version = "1.11.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/realtime_tools-release/archive/release/kinetic/realtime_tools/1.11.1-0.tar.gz";
    name = "1.11.1-0.tar.gz";
    sha256 = "b8ba7ac211929a3f1e5b7ab0056dab8ae3b93581fcd5280ee16dc0e0a6c056c0";
  };

  buildType = "catkin";
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
