
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-manager, pr2-controllers-msgs, roslaunch, rostest, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-mannequin-mode";
  version = "0.6.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_apps-release";
        rev = "release/noetic/pr2_mannequin_mode/0.6.2-1";
        sha256 = "sha256-TJZYsPOJooFMcmkX3myvHbg0WQiuXKk+SDWiYwCN/tU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ pr2-controller-manager pr2-controllers-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mannequin_mode package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
