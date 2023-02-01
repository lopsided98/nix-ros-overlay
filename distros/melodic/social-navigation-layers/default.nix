
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, costmap-2d, dynamic-reconfigure, geometry-msgs, people-msgs, pluginlib, roscpp, roslint }:
buildRosPackage {
  pname = "ros-melodic-social-navigation-layers";
  version = "0.5.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "wu-robotics";
        repo = "navigation_layers_release";
        rev = "release/melodic/social_navigation_layers/0.5.0-0";
        sha256 = "sha256-cPw/WJlilXxs2p/H8soPv/RAnTAzWoOt9k0nOnSQzaA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ angles costmap-2d dynamic-reconfigure geometry-msgs people-msgs pluginlib roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plugin-based layers for the navigation stack that
  implement various social navigation contraints, like proxemic distance.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
