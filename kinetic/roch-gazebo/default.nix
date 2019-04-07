
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, roch-control, controller-manager, map-server, roslaunch, hector-gazebo-plugins, catkin, gazebo-plugins, roch-description, rostopic, robot-state-publisher, roch-navigation, roch-bringup, pointcloud-to-laserscan, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-roch-gazebo";
  version = "2.0.12-r5";

  src = fetchurl {
    url = https://github.com/SawYerRobotics-release/roch_simulator-release/archive/release/kinetic/roch_gazebo/2.0.12-5.tar.gz;
    sha256 = "88c55b80ed78a07c61310f9b352a96f2511d7545002a82bacfad951afaab46ef";
  };

  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros roch-control map-server controller-manager hector-gazebo-plugins gazebo-plugins roch-bringup roch-description rostopic robot-state-publisher roch-navigation pointcloud-to-laserscan gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch Simulator bringup'';
    #license = lib.licenses.BSD;
  };
}
