
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, khi-duaro-description, khi-duaro-gazebo, khi-duaro-ikfast-plugin, khi-duaro-moveit-config, khi-robot-bringup, khi-robot-control, khi-robot-msgs, khi-rs-description, khi-rs-gazebo, khi-rs-ikfast-plugin, khi-rs007l-moveit-config, khi-rs007n-moveit-config, khi-rs080n-moveit-config }:
buildRosPackage {
  pname = "ros-melodic-khi-robot";
  version = "1.2.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "Kawasaki-Robotics";
        repo = "khi_robot-release";
        rev = "release/melodic/khi_robot/1.2.0-1";
        sha256 = "sha256-t2S/Bn3nfhNw5mA9lFRHC7pStGdDBbBdV+LjkZCUTk0=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ khi-duaro-description khi-duaro-gazebo khi-duaro-ikfast-plugin khi-duaro-moveit-config khi-robot-bringup khi-robot-control khi-robot-msgs khi-rs-description khi-rs-gazebo khi-rs-ikfast-plugin khi-rs007l-moveit-config khi-rs007n-moveit-config khi-rs080n-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for khi_robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
