
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nav2d-exploration, nav2d-karto, nav2d-localizer, nav2d-msgs, nav2d-navigator, nav2d-operator, nav2d-remote }:
buildRosPackage {
  pname = "ros-melodic-nav2d-tutorials";
  version = "0.4.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "skasperski";
        repo = "navigation_2d-release";
        rev = "release/melodic/nav2d_tutorials/0.4.2-0";
        sha256 = "sha256-3I9iwsru+8hJGTgj6rQwR9pxg56t9QUJNNQTRQd9LD8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nav2d-exploration nav2d-karto nav2d-localizer nav2d-msgs nav2d-navigator nav2d-operator nav2d-remote ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a set of tutorials that run 2D-Navigation within Stage-Simulator.'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
