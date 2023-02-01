
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, geometry-msgs, message-generation, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-fetch-auto-dock-msgs";
  version = "1.1.1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_msgs-release";
        rev = "release/melodic/fetch_auto_dock_msgs/1.1.1-0";
        sha256 = "sha256-44gElrgOCdl8HT4e/lDV1FNqnPynngNU+icXnJgXwdg=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ actionlib actionlib-msgs geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for fetch_auto_dock package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
