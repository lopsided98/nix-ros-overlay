
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, kdl-parser, orocos-kdl, rosconsole, roscpp, rostest, rostime, sensor-msgs, tf, tf2-kdl, tf2-ros, urdfdom-headers }:
buildRosPackage {
  pname = "ros-melodic-robot-state-publisher";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/robot_state_publisher-release/archive/release/melodic/robot_state_publisher/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "e80bd4391f22b6a8817f78c36ecfa37cf9e2161a9909f027a6516bcd7a6be10a";
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
