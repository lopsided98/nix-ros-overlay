
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gazebo-ros, gazebo-ros-pkgs, hector-gazebo-plugins, hector-models, robot-state-publisher, roscpp }:
buildRosPackage {
  pname = "ros-melodic-igvc-self-drive-gazebo-plugins";
  version = "0.1.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "robustify";
        repo = "igvc_self_drive_sim-release";
        rev = "release/melodic/igvc_self_drive_gazebo_plugins/0.1.4-1";
        sha256 = "sha256-tvVCnjRpVQBE7T0goiRvb6yaTFaMFiIF7EAdsTA7GPQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure gazebo-ros gazebo-ros-pkgs hector-gazebo-plugins hector-models robot-state-publisher roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for IGVC Self-Drive simulator'';
    license = with lib.licenses; [ "BSD-2-Clause" ];
  };
}
