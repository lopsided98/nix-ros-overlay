
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roslaunch, rospy, rqt-gui, rqt-gui-py }:
buildRosPackage {
  pname = "ros-melodic-rqt-launchtree";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pschillinger";
        repo = "rqt_launchtree-release";
        rev = "release/melodic/rqt_launchtree/0.2.0-1";
        sha256 = "sha256-HvQE8diWcHfSKIlmd1BI0I6mWbA+pRhSbfgIBXuJO6o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ roslaunch rospy rqt-gui rqt-gui-py ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An RQT plugin for hierarchical launchfile configuration introspection.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
