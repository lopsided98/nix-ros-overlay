
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-msgs, control-toolbox, controller-interface, controller-manager, eigen-conversions, franka-example-controllers, franka-gripper, franka-hw, franka-msgs, gazebo-dev, gazebo-ros, gazebo-ros-control, gtest, hardware-interface, joint-limits-interface, kdl-parser, pluginlib, roscpp, rostest, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-franka-gazebo";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_gazebo/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "596ca26ce1a567d664f987fc7caf9dfc085fd5ba4134551f05a3506a17d81f33";
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
