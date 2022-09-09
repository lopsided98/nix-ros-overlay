
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost-sml, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, eigen-conversions, franka-example-controllers, franka-gripper, franka-hw, franka-msgs, gazebo-dev, gazebo-ros, gazebo-ros-control, geometry-msgs, gtest, hardware-interface, joint-limits-interface, kdl-parser, pluginlib, roscpp, roslaunch, rospy, rostest, sensor-msgs, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-franka-gazebo";
  version = "0.10.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_gazebo/0.10.0-1.tar.gz";
    name = "0.10.0-1.tar.gz";
    sha256 = "11397619571033c5aea9fbce69d28551882b71fae7199e1ccb279f19241f4d57";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-dev ];
  checkInputs = [ geometry-msgs gtest rostest sensor-msgs ];
  propagatedBuildInputs = [ angles boost-sml control-msgs control-toolbox controller-interface controller-manager eigen-conversions franka-example-controllers franka-gripper franka-hw franka-msgs gazebo-ros gazebo-ros-control hardware-interface joint-limits-interface kdl-parser pluginlib roscpp roslaunch rospy std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package offers the FrankaHWSim Class to simulate a Franka Robot in Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
