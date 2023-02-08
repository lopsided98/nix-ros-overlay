
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo, rosconsole, roslint }:
buildRosPackage {
  pname = "ros-noetic-mecanum-gazebo-plugin";
  version = "0.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "clearpath-gbp";
        repo = "ridgeback_simulator-release";
        rev = "release/noetic/mecanum_gazebo_plugin/0.2.0-1";
        sha256 = "sha256-EOxUHcg1yURA8LURPBDkU8X6XKdYDVwW7BUoxh77Vww=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  propagatedBuildInputs = [ gazebo rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin which uses directional friction to simulate mecanum wheels.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
