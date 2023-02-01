
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, ar-track-alvar-msgs, catkin, geometry-msgs, joint-state-publisher, nav-msgs, robot-state-publisher, rospy, rviz, sensor-msgs, std-msgs, turtlebot3-bringup }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-automatic-parking-vision";
  version = "1.1.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "turtlebot3_applications-release";
        rev = "release/melodic/turtlebot3_automatic_parking_vision/1.1.0-0";
        sha256 = "sha256-ysLE57I2Wn3wpdzlboI/+UT6LHyCEzl7lMou39SyxbE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ar-track-alvar ar-track-alvar-msgs geometry-msgs joint-state-publisher nav-msgs robot-state-publisher rospy rviz sensor-msgs std-msgs turtlebot3-bringup ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for TurtleBot3 automatic_parking which uses ar code. This example needs a printed ar code and a TurtleBot3.'';
    license = with lib.licenses; [ asl20 ];
  };
}
