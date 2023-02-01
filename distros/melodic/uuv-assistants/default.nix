
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, nav-msgs, pythonPackages, roscpp, rosgraph, rospy, rostopic, sensor-msgs, tf, topic-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-assistants";
  version = "0.6.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "uuvsimulator";
        repo = "uuv_simulator-release";
        rev = "release/melodic/uuv_assistants/0.6.13-0";
        sha256 = "sha256-zklufFpz1RaTXMAWBGHTOdZh9RTRhvTY8Rgj0lUOcaM=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs nav-msgs pythonPackages.numpy roscpp rosgraph rospy rostopic sensor-msgs tf topic-tools visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
