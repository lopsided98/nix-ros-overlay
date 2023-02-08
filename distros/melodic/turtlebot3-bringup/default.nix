
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, hls-lfcd-lds-driver, joint-state-publisher, robot-state-publisher, roscpp, rosserial-python, sensor-msgs, std-msgs, turtlebot3-description, turtlebot3-msgs, turtlebot3-teleop }:
buildRosPackage {
  pname = "ros-melodic-turtlebot3-bringup";
  version = "1.2.5-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "turtlebot3-release";
        rev = "release/melodic/turtlebot3_bringup/1.2.5-1";
        sha256 = "sha256-JUAzSvBDO5X4y1IglkIhT8RpbGjIjvkOv1Hv0KOaRT8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs hls-lfcd-lds-driver joint-state-publisher robot-state-publisher roscpp rosserial-python sensor-msgs std-msgs turtlebot3-description turtlebot3-msgs turtlebot3-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roslaunch scripts for starting the TurtleBot3'';
    license = with lib.licenses; [ asl20 ];
  };
}
