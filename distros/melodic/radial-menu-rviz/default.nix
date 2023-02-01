
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5, radial-menu-model, radial-menu-msgs, roscpp, rviz }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-rviz";
  version = "0.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yoshito-n-students";
        repo = "radial_menu_ros-release";
        rev = "release/melodic/radial_menu_rviz/0.4.1-1";
        sha256 = "sha256-T7ObtnV4U4sId+8umaQWBsv+Y6rGbHfvMK4LemmIV4Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qt5.qtbase radial-menu-model radial-menu-msgs roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_rviz package'';
    license = with lib.licenses; [ mit ];
  };
}
