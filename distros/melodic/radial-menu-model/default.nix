
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, radial-menu-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-model";
  version = "0.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yoshito-n-students";
        repo = "radial_menu_ros-release";
        rev = "release/melodic/radial_menu_model/0.4.1-1";
        sha256 = "sha256-GPEEKAWaPv38aqFbBLzcui6be8p9ZK8LmqowTA4JyHY=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ radial-menu-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_model package'';
    license = with lib.licenses; [ mit ];
  };
}
