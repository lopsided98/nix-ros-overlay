
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, joint-trajectory-controller, pluginlib, robot-state-publisher, ros-control, ros-controllers, roslaunch, roslint }:
buildRosPackage {
  pname = "ros-melodic-gundam-rx78-control";
  version = "0.0.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "gundam-global-challenge";
        repo = "gundam_robot-release";
        rev = "release/melodic/gundam_rx78_control/0.0.3-1";
        sha256 = "sha256-ZIOMMDiYB7Hwzryof/VWFvkvFe6hjAGDB4r6wuvewTA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ controller-interface controller-manager joint-trajectory-controller pluginlib robot-state-publisher ros-control ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gundam_rx78_control contains launch and configuration scripts for the ros controller of the GUNDAM RX-78 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
