
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-trajectory-msgs";
  version = "1.13.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "common_msgs-release";
        rev = "release/noetic/trajectory_msgs/1.13.1-1";
        sha256 = "sha256-ihqSCEr/m57g2YsjZ2zGAm4lH5RbE7gXUiri17vJEpw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime rosbag-migration-rule std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages for defining robot trajectories. These messages are
    also the building blocks of most of the
    <a href="http://wiki.ros.org/control_msgs">control_msgs</a> actions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
