
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbash, rospy, rosserial-msgs, rosunit, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-rosserial-client";
  version = "0.8.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "rosserial-release";
        rev = "release/melodic/rosserial_client/0.8.0-0";
        sha256 = "sha256-yfeBkGHJwhKXzSMViD6ENJ17zGfBB2HnVf2+MityQGE=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosserial-msgs rosunit ];
  propagatedBuildInputs = [ rosbash rospy rosserial-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generalized client side source for rosserial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
