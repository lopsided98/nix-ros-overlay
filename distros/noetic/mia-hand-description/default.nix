
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-limits-interface, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roscpp, rostime, rviz, sensor-msgs, std-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "2f71045e658e66e667d4472e6748433a1c2c10c654978743a926fa2e730b66ec";
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
