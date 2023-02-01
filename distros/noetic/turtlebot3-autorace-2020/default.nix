
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, turtlebot3-autorace-camera, turtlebot3-autorace-core, turtlebot3-autorace-detect, turtlebot3-autorace-driving, turtlebot3-autorace-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-2020";
  version = "1.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "turtlebot3_autorace_2020_release";
        rev = "release/noetic/turtlebot3_autorace_2020/1.1.1-2";
        sha256 = "sha256-RwUE4dGpOKvtyf33kJ/osG3AmpWG1Cdd38NO2gTq9hQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ turtlebot3-autorace-camera turtlebot3-autorace-core turtlebot3-autorace-detect turtlebot3-autorace-driving turtlebot3-autorace-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace 2020 ROS 1 packages (meta package)'';
    license = with lib.licenses; [ asl20 ];
  };
}
