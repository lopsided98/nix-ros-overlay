
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-runtime, pythonPackages, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-switchbot-ros";
  version = "2.1.24-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "jsk_3rdparty-release";
        rev = "release/melodic/switchbot_ros/2.1.24-2";
        sha256 = "sha256-VCGEu8uuMAbyV8sqgSUEeqlzjbm4+sGkANPqYZBqsIw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-runtime pythonPackages.requests rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''use switchbot with ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
