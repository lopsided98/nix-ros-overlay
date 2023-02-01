
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, roslib, rosnode, rospy, rosservice, rostest }:
buildRosPackage {
  pname = "ros-noetic-system-fingerprint";
  version = "0.6.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MetroRobots";
        repo = "ros_system_fingerprint-release";
        rev = "release/noetic/system_fingerprint/0.6.1-1";
        sha256 = "sha256-sJWVOPQ+N77gZp34owWx+v8yuz2dIE4Lb/Zhkueinos=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ python3Packages.GitPython roslib rosnode rospy rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The system_fingerprint package'';
    license = with lib.licenses; [ "BSD-2-clause" ];
  };
}
