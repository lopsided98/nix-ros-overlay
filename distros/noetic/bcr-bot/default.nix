
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros-pkgs, joint-state-publisher, robot-state-publisher, rviz, xacro }:
buildRosPackage {
  pname = "ros-noetic-bcr-bot";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/blackcoffeerobotics/bcr_bot-release/archive/release/noetic/bcr_bot/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "45177f645813df47d3f44a4c6bbcc1dfcd0c473d9d1bf65f93fc8057d979b7d4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros-pkgs joint-state-publisher robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The bcr_bot package";
    license = with lib.licenses; [ asl20 ];
  };
}
