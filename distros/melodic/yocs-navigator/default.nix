
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, move-base-msgs, nav-msgs, roscpp, rospy, tf, yocs-math-toolkit, yocs-msgs }:
buildRosPackage {
  pname = "ros-melodic-yocs-navigator";
  version = "0.8.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "yujin_ocs-release";
        rev = "release/melodic/yocs_navigator/0.8.2-0";
        sha256 = "sha256-AEwpJXIONxgZrdmjuglEpXOsXINPA1hrZggU6j0uX7Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib move-base-msgs nav-msgs roscpp rospy tf yocs-math-toolkit yocs-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Navigation module for robots'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
