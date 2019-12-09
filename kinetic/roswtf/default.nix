
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbuild, rosnode, rosgraph, cmake-modules, pythonPackages, roslib, catkin, rosservice, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-roswtf";
  version = "1.12.14";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/roswtf/1.12.14-0.tar.gz";
    name = "1.12.14-0.tar.gz";
    sha256 = "0d3d052af6249ebd27dc854ecc4987eaf1fb15ab6b29800c9616bbb89413d721";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ cmake-modules ];
  propagatedBuildInputs = [ rosbuild rosnode rosgraph pythonPackages.rospkg roslib pythonPackages.paramiko rosservice roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
