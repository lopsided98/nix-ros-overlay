
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosmaster, boost, catkin, rosgraph, rospy, roslaunch, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-rostest";
  version = "1.12.14";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/kinetic/rostest/1.12.14-0.tar.gz;
    sha256 = "62e48a54a72794e418418adaa170c4cd191d85f07b001fb82c05d2d505def241";
  };

  propagatedBuildInputs = [ rosmaster rosgraph boost rospy roslaunch rosunit ];
  nativeBuildInputs = [ catkin rosunit boost ];

  meta = {
    description = ''Integration test suite based on roslaunch that is compatible with xUnit frameworks.'';
    #license = lib.licenses.BSD;
  };
}
