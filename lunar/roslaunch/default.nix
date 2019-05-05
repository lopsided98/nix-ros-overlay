
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosmaster, rosparam, rosbuild, rosout, pythonPackages, catkin, rosgraph-msgs, rosclean, roslib, rosunit }:
buildRosPackage {
  pname = "ros-lunar-roslaunch";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/roslaunch/1.13.7-0.tar.gz;
    sha256 = "7ae83d3416c59aa10fb037c86832cf25f73c839cb4537764d36f0cfc0f5dc3a8";
  };

  checkInputs = [ rosbuild ];
  propagatedBuildInputs = [ rosmaster pythonPackages.rospkg rosparam rosout pythonPackages.pyyaml rosgraph-msgs rosclean pythonPackages.paramiko roslib rosunit ];
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
