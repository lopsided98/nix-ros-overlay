
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosmsg, rospy, rqt-gui, rqt-gui-py, rqt-msg }:
buildRosPackage {
  pname = "ros-noetic-rqt-srv";
  version = "0.4.9-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rqt_srv-release";
        rev = "release/noetic/rqt_srv/0.4.9-1";
        sha256 = "sha256-/AtH/gBQ0F4EW7o/1m5/tLaqnnx6smzUEImR9KR1HbQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosmsg rospy rqt-gui rqt-gui-py rqt-msg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python GUI plugin for introspecting available ROS message types.
  Note that the srvs available through this plugin is the ones that are stored
  on your machine, not on the ROS core your rqt instance connects to.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
