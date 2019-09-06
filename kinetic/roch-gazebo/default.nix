
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, roch-control, controller-manager, map-server, roslaunch, hector-gazebo-plugins, catkin, gazebo-plugins, roch-description, roch-navigation, robot-state-publisher, rostopic, roch-bringup, pointcloud-to-laserscan, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-roch-gazebo";
  version = "2.0.12-r5";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch_simulator-release/archive/release/kinetic/roch_gazebo/2.0.12-5.tar.gz";
    name = "2.0.12-5.tar.gz";
    sha256 = "88c55b80ed78a07c61310f9b352a96f2511d7545002a82bacfad951afaab46ef";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ gazebo-ros controller-manager roch-control map-server hector-gazebo-plugins gazebo-plugins roch-description roch-navigation robot-state-publisher rostopic roch-bringup pointcloud-to-laserscan gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
