
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, eigen-conversions, franka-example-controllers, franka-gripper, franka-hw, franka-msgs, gazebo-dev, gazebo-ros, gazebo-ros-control, gtest, hardware-interface, joint-limits-interface, kdl-parser, pluginlib, roscpp, rostest, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-franka-gazebo";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_gazebo/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "46271d33a777e64854b1c843a6466d801222cc7e308d39bff560d700dc4da962";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-dev ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface controller-manager eigen-conversions franka-example-controllers franka-gripper franka-hw franka-msgs gazebo-ros gazebo-ros-control hardware-interface joint-limits-interface kdl-parser pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package offers the FrankaHWSim Class to simulate a Franka Robot in Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
