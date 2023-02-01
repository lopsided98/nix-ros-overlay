
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rocon-std-msgs, std-msgs, uuid-msgs }:
buildRosPackage {
  pname = "ros-melodic-scheduler-msgs";
  version = "0.9.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_msgs-release";
        rev = "release/melodic/scheduler_msgs/0.9.0-0";
        sha256 = "sha256-d6PkSXculGsa08XSRC+nKk3dWV1ANnD6hRpHjqNJbF4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rocon-std-msgs std-msgs uuid-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by the rocon scheduler.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
