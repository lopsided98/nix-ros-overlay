
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosgraph, pythonPackages, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rosparam";
  version = "1.12.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rosparam/1.12.14-0.tar.gz";
    name = "1.12.14-0.tar.gz";
    sha256 = "484b4d6a3516b81a5a7a76cd0398e52ee072880af13d48095a51a611a4af62aa";
  };

  buildType = "catkin";
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
