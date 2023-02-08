
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, copernicus-msgs, diff-drive-controller, dynamic-reconfigure, gazebo-ros-control, joint-state-controller, roscpp, std-msgs, twist-mux }:
buildRosPackage {
  pname = "ros-melodic-copernicus-control";
  version = "1.1.0-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "botsync-gbp";
        repo = "copernicus-release";
        rev = "release/melodic/copernicus_control/1.1.0-1";
        sha256 = "sha256-hnFwAM+JOTIw/v9SL+ZEwcnL5W0VqBS7vG8fT8EgG3o=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager copernicus-msgs diff-drive-controller dynamic-reconfigure gazebo-ros-control joint-state-controller roscpp std-msgs twist-mux ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_control package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
