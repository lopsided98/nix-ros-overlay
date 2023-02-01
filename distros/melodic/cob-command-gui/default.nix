
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-command-gui";
  version = "0.6.19-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ipa320";
        repo = "cob_command_tools-release";
        rev = "release/melodic/cob_command_gui/0.6.19-1";
        sha256 = "sha256-ADmeqfH8Lpqv9PKvGmoaShVWS9oWF2TVKa02750d3hQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools ];
  propagatedBuildInputs = [ cob-msgs cob-script-server pythonPackages.pygobject3 roslib rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
