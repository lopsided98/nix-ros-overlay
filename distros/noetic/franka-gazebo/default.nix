
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, eigen-conversions, franka-example-controllers, franka-gripper, franka-hw, franka-msgs, gazebo-dev, gazebo-ros, gazebo-ros-control, geometry-msgs, gtest, hardware-interface, joint-limits-interface, kdl-parser, pluginlib, roscpp, rostest, sensor-msgs, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-franka-gazebo";
  version = "0.8.2-r2";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/noetic/franka_gazebo/0.8.2-2.tar.gz";
    name = "0.8.2-2.tar.gz";
    sha256 = "23b547c3f722c2c0cae80c8be1461e2a648b482d3f5bf84d34aa1698d49aeb66";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-dev ];
  checkInputs = [ geometry-msgs gtest rostest sensor-msgs ];
  propagatedBuildInputs = [ angles control-msgs control-toolbox controller-interface controller-manager eigen-conversions franka-example-controllers franka-gripper franka-hw franka-msgs gazebo-ros gazebo-ros-control hardware-interface joint-limits-interface kdl-parser pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package offers the FrankaHWSim Class to simulate a Franka Robot in Gazebo'';
    license = with lib.licenses; [ asl20 ];
  };
}
