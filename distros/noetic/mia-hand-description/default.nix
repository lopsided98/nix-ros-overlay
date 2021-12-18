
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, robot-state-publisher, roscpp, rostime, rviz, sensor-msgs, urdf }:
buildRosPackage {
  pname = "ros-noetic-mia-hand-description";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/Prensilia-srl/mia_hand_ros_pkgs-release/archive/release/noetic/mia_hand_description/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "58fb19966100faabf34e4435309070ac387cb6578c2b0f6644e0a3daa7c1765a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui robot-state-publisher roscpp rostime rviz sensor-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package containing Mia Hand URDF model. Includes Gazebo tags that allow
    for URDF usage in Gazebo simulator. Includes description of the index_thumb
    opposition passive joint.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
