
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, roslaunch, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-turtlebot3-autorace-core";
  version = "1.1.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "turtlebot3_autorace_2020_release";
        rev = "release/noetic/turtlebot3_autorace_core/1.1.1-2";
        sha256 = "sha256-H2ftAP4BNYnDiqZuOCsw4V0VzsQ9+xGb5MyQE52NoQs=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pythonPackages.enum34 pythonPackages.numpy roslaunch rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''TurtleBot3 AutoRace ROS package that TurtleBot3 Auto's core'';
    license = with lib.licenses; [ asl20 ];
  };
}
