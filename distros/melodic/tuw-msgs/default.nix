
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tuw-airskin-msgs, tuw-gazebo-msgs, tuw-geometry-msgs, tuw-multi-robot-msgs, tuw-nav-msgs, tuw-object-msgs, tuw-vehicle-msgs }:
buildRosPackage {
  pname = "ros-melodic-tuw-msgs";
  version = "0.0.13";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tuw-robotics";
        repo = "tuw_msgs-release";
        rev = "release/melodic/tuw_msgs/0.0.13-0";
        sha256 = "sha256-5SGieh9loDG2QLEjIrcg/0UnjKo9BqMteikkzujXS2E=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ tuw-airskin-msgs tuw-gazebo-msgs tuw-geometry-msgs tuw-multi-robot-msgs tuw-nav-msgs tuw-object-msgs tuw-vehicle-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_msgs meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
