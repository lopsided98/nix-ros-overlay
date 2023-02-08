
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo, gazebo-plugins, gazebo-ros, geometry-msgs, joint-state-publisher, pythonPackages, robot-state-publisher, roscpp, roslaunch, rospy, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-noetic-thunder-line-follower-pmr3100";
  version = "0.1.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ThundeRatz";
        repo = "thunder_line_follower_pmr3100-release";
        rev = "release/noetic/thunder_line_follower_pmr3100/0.1.1-1";
        sha256 = "sha256-du66a7yIEOjyY0h/T5t9rMsUZ9GtYx+uy82/qf2vCbE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo gazebo-plugins gazebo-ros geometry-msgs joint-state-publisher pythonPackages.pygame robot-state-publisher roscpp roslaunch rospy velocity-controllers xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Simulation environment for a line follower development</p>
    <p>Created for the discipline PMR3100 - Intro to Mechatronics from Poli-USP</p>'';
    license = with lib.licenses; [ mit ];
  };
}
