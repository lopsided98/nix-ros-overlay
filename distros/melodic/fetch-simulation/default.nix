
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fetch-gazebo, fetch-gazebo-demo, fetchit-challenge }:
buildRosPackage {
  pname = "ros-melodic-fetch-simulation";
  version = "0.9.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_gazebo-release";
        rev = "release/melodic/fetch_simulation/0.9.2-1";
        sha256 = "sha256-b04Y+CJhoE1a8xUtlmK+tVQg/GZQxHdX6TKKhpJGzz8=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fetch-gazebo fetch-gazebo-demo fetchit-challenge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch Simulation, packages for working with Fetch and Freight in Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
