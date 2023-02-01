
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-recorder-msgs";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "rosbag_uploader-release";
        rev = "release/melodic/recorder_msgs/1.0.1-1";
        sha256 = "sha256-5e75LWx06gTpJ329aFVG+JYTTm2UMIu35uVfslahwz0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation std-msgs ];
  propagatedBuildInputs = [ actionlib-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages and actions for rosbag recorders.'';
    license = with lib.licenses; [ asl20 ];
  };
}
