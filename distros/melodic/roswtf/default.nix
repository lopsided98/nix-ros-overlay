
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pythonPackages, rosbag, rosbuild, rosgraph, roslang, roslaunch, roslib, rosnode, rosservice, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-roswtf";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/roswtf/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "5c6ff528c7c6a8dcff6d24603e208c9f9223cdafe33741a0e46569fe4f05965f";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ cmake-modules rosbag roslang std-srvs ];
  propagatedBuildInputs = [ pythonPackages.paramiko pythonPackages.rospkg rosbuild rosgraph roslaunch roslib rosnode rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
