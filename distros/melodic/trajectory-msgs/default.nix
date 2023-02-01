
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, rosbag-migration-rule, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-trajectory-msgs";
  version = "1.12.8-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "common_msgs-release";
        rev = "release/melodic/trajectory_msgs/1.12.8-1";
        sha256 = "sha256-xjsHut39Ol1XqV40vF6iWKPpjONuaNinoH5TxW0tS9g=";
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
