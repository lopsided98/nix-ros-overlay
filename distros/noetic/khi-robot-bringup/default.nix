
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, joint-state-controller, joint-trajectory-controller, khi-duaro-description, khi-duaro-moveit-config, khi-robot-control, position-controllers, robot-state-publisher, roslaunch, rostest, tf }:
buildRosPackage {
  pname = "ros-noetic-khi-robot-bringup";
  version = "1.3.0-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Kawasaki-Robotics";
        repo = "khi_robot-release";
        rev = "release/noetic/khi_robot_bringup/1.3.0-2";
        sha256 = "sha256-dvvgeIzES9feoeAnfQGBhBC0CroEuIQxmNTxQEvBwEk=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ controller-manager joint-state-controller joint-trajectory-controller khi-duaro-description khi-duaro-moveit-config khi-robot-control position-controllers robot-state-publisher tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package contains bringup scripts/config/tools for KHI Robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
