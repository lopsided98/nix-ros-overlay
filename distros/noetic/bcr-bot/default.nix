
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-pkgs, joint-state-publisher, robot-state-publisher, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-bcr-bot";
  version = "0.0.1-r4";

  src = fetchurl {
    url = "https://github.com/blackcoffeerobotics/bcr_bot-release/archive/release/noetic/bcr_bot/0.0.1-4.tar.gz";
    name = "0.0.1-4.tar.gz";
    sha256 = "69109ec3cd2e0d11104ebe7a5fc2afbe34f84fb7c987e6c8b85dd1f446566c00";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros-pkgs joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The bcr_bot package'';
    license = with lib.licenses; [ "-C-Black-Coffee-Robotics" ];
  };
}
