
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph }:
buildRosPackage {
  pname = "ros-kinetic-rosparam";
  version = "1.12.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosparam/1.12.17-1.tar.gz";
    name = "1.12.17-1.tar.gz";
    sha256 = "1d6f465d685db5286520afa2e74445e97a003552dea0a8bba54133953b384498";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.pyyaml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosparam contains the rosparam command-line tool for getting and
    setting ROS Parameters on the <a href="http://www.ros.org/wiki/Parameter%20Server">Parameter
    Server</a> using YAML-encoded files. It also contains an
    experimental library for using YAML with the Parameter
    Server. This library is intended for internal use only.

    rosparam can be invoked within a <a href="http://www.ros.org/wiki/roslaunch">roslaunch</a> file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
