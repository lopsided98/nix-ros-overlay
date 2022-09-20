
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rosgraph }:
buildRosPackage {
  pname = "ros-melodic-rosparam";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/rosparam/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "10861fbca6603cd0a4ee97d16940cbd777cfd8fb9c4fb66ac93b53802c2ac5ae";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.pyyaml rosgraph ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosparam contains the rosparam command-line tool for getting and
    setting ROS Parameters on the <a href="http://wiki.ros.org/Parameter%20Server">Parameter
    Server</a> using YAML-encoded files. It also contains an
    experimental library for using YAML with the Parameter
    Server. This library is intended for internal use only.

    rosparam can be invoked within a <a href="http://wiki.ros.org/roslaunch">roslaunch</a> file.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
