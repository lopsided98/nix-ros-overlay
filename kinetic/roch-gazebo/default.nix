
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roch-navigation, roch-bringup, pointcloud-to-laserscan, controller-manager, robot-state-publisher, hector-gazebo-plugins, map-server, catkin, roch-description, rostopic, gazebo-ros-control, gazebo-ros, roslaunch, roch-control, gazebo-plugins }:
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
  propagatedBuildInputs = [ roch-navigation roch-bringup pointcloud-to-laserscan controller-manager robot-state-publisher hector-gazebo-plugins map-server roch-description rostopic gazebo-ros-control gazebo-ros roch-control gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
