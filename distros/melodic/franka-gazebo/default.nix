
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, eigen-conversions, franka-example-controllers, franka-gripper, franka-hw, franka-msgs, gazebo-dev, gazebo-ros, gazebo-ros-control, geometry-msgs, gtest, hardware-interface, joint-limits-interface, kdl-parser, pluginlib, roscpp, roslaunch, rospy, rostest, sensor-msgs, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-franka-gazebo";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_gazebo/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "9def23d79e07383b50a8198b810d08cde38ca603aadbbc647a59c4064294d0cf";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-dev ];
  checkInputs = [ geometry-msgs gtest rostest sensor-msgs ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface controller-manager eigen-conversions franka-example-controllers franka-gripper franka-hw franka-msgs gazebo-ros gazebo-ros-control hardware-interface joint-limits-interface kdl-parser pluginlib roscpp roslaunch rospy std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package offers the FrankaHWSim Class to simulate a Franka Robot in Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
