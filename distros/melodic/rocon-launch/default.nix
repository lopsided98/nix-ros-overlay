
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rocon-console, rocon-python-utils, rosbash, roslaunch, rospy }:
buildRosPackage {
  pname = "ros-melodic-rocon-launch";
  version = "0.3.2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yujinrobot-release";
        repo = "rocon_tools-release";
        rev = "release/melodic/rocon_launch/0.3.2-0";
        sha256 = "sha256-0lIpCeOrOq1C0tDLVeyr/1ZOEM7Fe8LvrJcEdmGy0tQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ rocon-console rocon-python-utils rosbash roslaunch rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A multi-roslaunch (for single and multi-master systems).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
