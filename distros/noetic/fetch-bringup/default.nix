
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, depth-image-proc, diagnostic-aggregator, fetch-description, fetch-drivers, fetch-moveit-config, fetch-navigation, fetch-open-auto-dock, fetch-teleop, graft, image-proc, joy, openni2-launch, robot-state-publisher, sensor-msgs, sick-tim, sound-play }:
buildRosPackage {
  pname = "ros-noetic-fetch-bringup";
  version = "0.9.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_robots-release";
        rev = "release/noetic/fetch_bringup/0.9.3-1";
        sha256 = "sha256-BSvlnvAdMWQMhpe34llcGL4rUfFJbZFKAqaMIze6Cc4=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ depth-image-proc diagnostic-aggregator fetch-description fetch-drivers fetch-moveit-config fetch-navigation fetch-open-auto-dock fetch-teleop graft image-proc joy openni2-launch robot-state-publisher sensor-msgs sick-tim sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for fetch'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
