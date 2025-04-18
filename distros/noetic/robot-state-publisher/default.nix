
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, kdl-parser, orocos-kdl, rosbag, rosconsole, roscpp, rostest, rostime, sensor-msgs, tf, tf2-kdl, tf2-ros, urdfdom-headers }:
buildRosPackage {
  pname = "ros-noetic-robot-state-publisher";
  version = "1.15.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_state_publisher-release/archive/release/noetic/robot_state_publisher/1.15.3-1.tar.gz";
    name = "1.15.3-1.tar.gz";
    sha256 = "e4240240cc0a2b870ca03f5c1628389ca7b717322682adf803ee4c4194da325f";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen urdfdom-headers ];
  checkInputs = [ rosbag rostest ];
  propagatedBuildInputs = [ kdl-parser orocos-kdl rosconsole roscpp rostime sensor-msgs tf tf2-kdl tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package allows you to publish the state of a robot to
    <a href=\"http://ros.org/wiki/tf2\">tf2</a>. Once the state gets published, it is
    available to all components in the system that also use <tt>tf2</tt>.
    The package takes the joint angles of the robot as input
    and publishes the 3D poses of the robot links, using a kinematic
    tree model of the robot. The package can both be used as a library
    and as a ROS node.  This package has been well tested and the code
    is stable. No major changes are planned in the near future.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
