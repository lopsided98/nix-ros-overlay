
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fetch-calibration, fetch-depth-layer, fetch-description, fetch-ikfast-plugin, fetch-maps, fetch-moveit-config, fetch-navigation, fetch-teleop }:
buildRosPackage {
  pname = "ros-melodic-fetch-ros";
  version = "0.8.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "fetchrobotics-gbp";
        repo = "fetch_ros-release";
        rev = "release/melodic/fetch_ros/0.8.3-1";
        sha256 = "sha256-/HzzOfAbTeqItj/2xN/IPLO3TdWsyWvdLwia6rz1I8Q=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fetch-calibration fetch-depth-layer fetch-description fetch-ikfast-plugin fetch-maps fetch-moveit-config fetch-navigation fetch-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch ROS, packages for working with Fetch and Freight'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
