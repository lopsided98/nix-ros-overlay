
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, rosconsole, orocos-kdl, sensor-msgs, catkin, tf2-kdl, rostime, tf2-ros, roscpp, rostest, urdfdom-headers, eigen, tf }:
buildRosPackage {
  pname = "ros-melodic-robot-state-publisher";
  version = "1.13.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/robot_state_publisher-release/archive/release/melodic/robot_state_publisher/1.13.6-0.tar.gz;
    sha256 = "6c7097ebd829c690bd5b55296eb4b48ae434f2c75c0e20647f78e716aa56dd74";
  };

  buildInputs = [ kdl-parser orocos-kdl rosconsole sensor-msgs tf2-kdl rostime roscpp tf2-ros urdfdom-headers eigen tf ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ kdl-parser orocos-kdl rosconsole sensor-msgs catkin tf2-kdl rostime roscpp tf2-ros eigen tf ];
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
    #license = lib.licenses.BSD;
  };
}
