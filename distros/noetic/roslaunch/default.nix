
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosbuild, rosclean, rosgraph-msgs, roslib, rosmaster, rosout, rosparam, rosunit }:
buildRosPackage {
  pname = "ros-noetic-roslaunch";
  version = "1.15.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roslaunch/1.15.7-1.tar.gz";
    name = "1.15.7-1.tar.gz";
    sha256 = "9191adb1cf8ec5d93c6b00a11cee802a2352cd035d0c30e237d743c3027bc8cd";
  };

  buildType = "catkin";
  checkInputs = [ rosbuild ];
  propagatedBuildInputs = [ pythonPackages.paramiko pythonPackages.pyyaml pythonPackages.rospkg rosclean rosgraph-msgs roslib rosmaster rosout rosparam rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslaunch is a tool for easily launching multiple ROS <a href="http://ros.org/wiki/Nodes">nodes</a> locally and remotely
    via SSH, as well as setting parameters on the <a href="http://ros.org/wiki/Parameter Server">Parameter
    Server</a>. It includes options to automatically respawn processes
    that have already died. roslaunch takes in one or more XML
    configuration files (with the <tt>.launch</tt> extension) that
    specify the parameters to set and nodes to launch, as well as the
    machines that they should be run on.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
