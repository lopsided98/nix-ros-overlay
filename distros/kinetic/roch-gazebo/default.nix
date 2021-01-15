
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-plugins, gazebo-ros, gazebo-ros-control, hector-gazebo-plugins, map-server, pointcloud-to-laserscan, robot-state-publisher, roch-bringup, roch-control, roch-description, roch-navigation, roslaunch, rostopic }:
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
  propagatedBuildInputs = [ controller-manager gazebo-plugins gazebo-ros gazebo-ros-control hector-gazebo-plugins map-server pointcloud-to-laserscan robot-state-publisher roch-bringup roch-control roch-description roch-navigation rostopic ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''SawYer roch Simulator bringup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
