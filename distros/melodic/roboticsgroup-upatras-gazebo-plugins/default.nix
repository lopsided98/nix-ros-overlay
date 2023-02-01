
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, gazebo-ros, roscpp }:
buildRosPackage {
  pname = "ros-melodic-roboticsgroup-upatras-gazebo-plugins";
  version = "0.2.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "roboticsgroup";
        repo = "roboticsgroup_upatras_gazebo_plugins-release";
        rev = "release/melodic/roboticsgroup_upatras_gazebo_plugins/0.2.0-2";
        sha256 = "sha256-9skr5rgzU90ggoYGDTBM/0AXhkgdo3EMZCt8bC8yZLA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox gazebo-ros roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of gazebo plugins'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
