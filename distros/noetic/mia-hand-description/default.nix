
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-limits-interface, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roscpp, rostime, rviz, sensor-msgs, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-description";
  version = "1.0.0-r13";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_description/1.0.0-13.tar.gz";
    name = "1.0.0-13.tar.gz";
    sha256 = "eb7181d71b31e2949accf0af96bdf8eedb9164c1a514d3cd739214e17b8963a1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-limits-interface joint-state-publisher joint-state-publisher-gui robot-state-publisher roscpp rostime rviz sensor-msgs std-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing Mia Hand URDF model. Includes Gazebo tags that allow
    for URDF usage in Gazebo simulator. Includes description of the index_thumb
    opposition passive joint.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
