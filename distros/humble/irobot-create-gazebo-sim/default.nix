
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, irobot-create-gazebo-bringup, irobot-create-gazebo-plugins }:
buildRosPackage {
  pname = "ros-humble-irobot-create-gazebo-sim";
  version = "2.0.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros2-gbp";
        repo = "create3_sim-release";
        rev = "release/humble/irobot_create_gazebo_sim/2.0.0-1";
        sha256 = "sha256-6T6rG2fCQdTkQYjJGdaTFneoFS+tvAd8d4eLiPoaIEw=";
      };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ irobot-create-gazebo-bringup irobot-create-gazebo-plugins ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for the iRobot(R) Create(R) 3 robot Gazebo simulator<a href="http://gazebosim.org/">Gazebo</a> simulation stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
