
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, rocon-service-pair-msgs, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-melodic-rocon-app-manager-msgs";
  version = "0.9.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_msgs-release";
        rev = "release/melodic/rocon_app_manager_msgs/0.9.0-0";
        sha256 = "sha256-Dksb6OaiK8uFDrfNQNNp+WQhJ2oDiW1mAu6EhvVSqGc=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime rocon-service-pair-msgs rocon-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by the platform app manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
