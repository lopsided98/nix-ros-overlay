
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-console, rocon-ebnf, rocon-python-utils, rospy, rosunit }:
buildRosPackage {
  pname = "ros-melodic-rocon-uri";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_uri/0.3.2-0";
        sha256 = "sha256-sjSP63feWtHqbzDkUmIjP6rW6NgufmtMOV3tTWnN6tI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ pythonPackages.rospkg rocon-console rocon-ebnf rocon-python-utils rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Module for working with rocon uri strings.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
