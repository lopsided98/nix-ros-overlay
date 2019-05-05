
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, catkin, rosgraph }:
buildRosPackage {
  pname = "ros-lunar-rosparam";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/rosparam/1.13.7-0.tar.gz;
    sha256 = "2101dbca75b3f502b5b0c73875bb2c138b478fce1a05dc24e0f743fbbcf185ea";
  };

  propagatedBuildInputs = [ rosgraph pythonPackages.pyyaml ];
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
