
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, ethercat-hardware, pr2-controller-manager, realtime-tools, roscpp, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-pr2-ethercat";
  version = "1.6.32-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_robot-release";
        rev = "release/noetic/pr2_ethercat/1.6.32-1";
        sha256 = "sha256-7WSCXQXiQx10EqJldo9Cmy/2/A5I8VQA57Npv9jIXMY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater ethercat-hardware pr2-controller-manager realtime-tools roscpp std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Main loop that runs the robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
