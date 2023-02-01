
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pluginlib, pr2-controller-interface, pr2-mechanism-controllers, pr2-mechanism-model, realtime-tools, robot-mechanism-controllers, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-calibration-controllers";
  version = "1.10.17-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "pr2-gbp";
        repo = "pr2_controllers-release";
        rev = "release/melodic/pr2_calibration_controllers/1.10.17-1";
        sha256 = "sha256-vKF69zTU+VufuvR0ggyt/3mzhJhCK7At35w7bcgv3CU=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pluginlib pr2-controller-interface pr2-mechanism-controllers pr2-mechanism-model realtime-tools robot-mechanism-controllers roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_calibration_controllers package contains the controllers
     used to bring all the joints in the PR2 to a calibrated state.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
