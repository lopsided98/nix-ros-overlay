
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, pluginlib, radial-menu-model, radial-menu-msgs, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-backend";
  version = "0.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yoshito-n-students";
        repo = "radial_menu_ros-release";
        rev = "release/melodic/radial_menu_backend/0.4.1-1";
        sha256 = "sha256-mVjCsCgs60aQih3Vb7AibbzVp2gEmqPMMIv02Azs0Bw=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet pluginlib radial-menu-model radial-menu-msgs roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_backend package'';
    license = with lib.licenses; [ mit ];
  };
}
