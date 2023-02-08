
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joy, message-filters, radial-menu-backend, radial-menu-model, radial-menu-msgs, radial-menu-rviz, roscpp, roslaunch, rviz, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-radial-menu-example";
  version = "0.4.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "yoshito-n-students";
        repo = "radial_menu_ros-release";
        rev = "release/melodic/radial_menu_example/0.4.1-1";
        sha256 = "sha256-5fJFTDm8ybBonAm7XJlU7EZrrkqEpp6BHZFBf9pLXaQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joy message-filters radial-menu-backend radial-menu-model radial-menu-msgs radial-menu-rviz roscpp roslaunch rviz sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The radial_menu_example package'';
    license = with lib.licenses; [ mit ];
  };
}
