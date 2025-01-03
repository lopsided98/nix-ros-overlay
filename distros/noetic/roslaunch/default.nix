
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosbuild, rosclean, rosgraph-msgs, roslib, rosmaster, rosout, rosparam, rosunit }:
buildRosPackage {
  pname = "ros-noetic-roslaunch";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/roslaunch/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "7e70afc194bce398c3662f5cafedc6b01967e51533f67a49fe2539abbb66371f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosbuild ];
  propagatedBuildInputs = [ python3Packages.paramiko python3Packages.pyyaml python3Packages.rospkg rosclean rosgraph-msgs roslib rosmaster rosout rosparam rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "roslaunch is a tool for easily launching multiple ROS <a href=\"http://ros.org/wiki/Nodes\">nodes</a> locally and remotely
    via SSH, as well as setting parameters on the <a href=\"http://ros.org/wiki/Parameter Server\">Parameter
    Server</a>. It includes options to automatically respawn processes
    that have already died. roslaunch takes in one or more XML
    configuration files (with the <tt>.launch</tt> extension) that
    specify the parameters to set and nodes to launch, as well as the
    machines that they should be run on.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
