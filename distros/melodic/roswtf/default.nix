
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, pythonPackages, rosbag, rosbuild, rosgraph, roslang, roslaunch, roslib, rosnode, rosservice, rostest, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-roswtf";
  version = "1.14.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/roswtf/1.14.6-1.tar.gz";
    name = "1.14.6-1.tar.gz";
    sha256 = "50c1a09cbfb758b240f588c03fd37d7db48e9e38fd688db36c389d3ad7d45027";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ cmake-modules rosbag roslang std-srvs ];
  propagatedBuildInputs = [ pythonPackages.paramiko pythonPackages.rospkg rosbuild rosgraph roslaunch roslib rosnode rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roswtf is a tool for diagnosing issues with a running ROS system. Think of it as a FAQ implemented in code.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
