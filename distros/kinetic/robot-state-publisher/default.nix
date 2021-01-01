
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, kdl-parser, orocos-kdl, rosconsole, roscpp, rostest, rostime, sensor-msgs, tf, tf2-kdl, tf2-ros, urdfdom-headers }:
buildRosPackage {
  pname = "ros-kinetic-robot-state-publisher";
  version = "1.13.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_state_publisher-release/archive/release/kinetic/robot_state_publisher/1.13.7-1.tar.gz";
    name = "1.13.7-1.tar.gz";
    sha256 = "23ee023d8854b508f0cd7f1ccceac40a5b68d5f4c7bf898db4db065ac6351e57";
  };

  buildType = "catkin";
  buildInputs = [ urdfdom-headers ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ catkin eigen kdl-parser orocos-kdl rosconsole roscpp rostime sensor-msgs tf tf2-kdl tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package allows you to publish the state of a robot to
    <a href="http://ros.org/wiki/tf">tf</a>. Once the state gets published, it is
    available to all components in the system that also use <tt>tf</tt>.
    The package takes the joint angles of the robot as input
    and publishes the 3D poses of the robot links, using a kinematic
    tree model of the robot. The package can both be used as a library
    and as a ROS node.  This package has been well tested and the code
    is stable. No major changes are planned in the near future.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
