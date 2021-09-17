
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, eigen-conversions, franka-example-controllers, franka-gripper, franka-hw, franka-msgs, gazebo-dev, gazebo-ros, gazebo-ros-control, gtest, hardware-interface, joint-limits-interface, kdl-parser, pluginlib, roscpp, rostest, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-franka-gazebo";
  version = "0.8.1-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_gazebo/0.8.1-2.tar.gz";
    name = "0.8.1-2.tar.gz";
    sha256 = "744e40d8cba133c9225208368b0a3d5d257a6fbe3a657b0d37d8085ccdc0ca35";
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
